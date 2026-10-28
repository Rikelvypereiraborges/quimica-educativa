require "test_helper"

class LearningFlowTest < ActionDispatch::IntegrationTest
  setup do
    @subject = Subject.create!(
      name: "Química Analítica",
      slug: "quimica-analitica",
      description: "Aprenda a analisar amostras.",
      icon: "AN",
      color: "#c5e1cc",
      position: 1
    )
    @lesson = @subject.lessons.create!(
      title: "Concentração comum",
      summary: "Relação entre massa e volume.",
      concept: "C = m / V.",
      example: "12 g em 3 L resultam em 4 g/L.",
      question: "Qual é a concentração de 12 g em 3 L?",
      option_a: "4 g/L",
      option_b: "9 g/L",
      option_c: "15 g/L",
      option_d: "36 g/L",
      correct_option: "a",
      explanation: "Divida a massa pelo volume.",
      xp: 10,
      position: 1
    )
  end

  test "home page introduces the learning tracks" do
    get root_path

    assert_response :success
    assert_select "h1", /Química que faz/
    assert_select ".subject-card", 1
  end

  test "student can open a subject and lesson" do
    get subject_path(@subject.slug)
    assert_response :success
    assert_select ".lesson-row", 1

    get lesson_path(subject_slug: @subject.slug, id: @lesson.id)
    assert_response :success
    assert_select ".answer-option", 4
  end

  test "student can open the final assessment with ten questions" do
    assessment = create_assessment

    get subject_path(@subject.slug)
    assert_response :success
    assert_select ".subject-meta", /1 avaliação final/
    assert_select ".lesson-row", 2
    assert_select ".lesson-row small", /Teste final/

    get lesson_path(subject_slug: @subject.slug, id: assessment.id)

    assert_response :success
    assert_select ".assessment-question", 10
    assert_select ".assessment-instructions", /pelo menos 7/
  end

  test "seeded learning tracks have ten questions in each module and final assessment" do
    Rails.application.load_seed

    tracks = Subject.includes(lessons: :quiz_questions).map do |subject|
      {
        subject: subject,
        modules: subject.lessons.reject(&:assessment?),
        assessment: subject.lessons.find(&:assessment?)
      }
    end

    assert_equal 19, tracks.length
    assert tracks.all? { |track| track[:assessment]&.quiz_questions&.length == 10 }
    assert_equal 106, tracks.sum { |track| track[:modules].length }
    assert tracks.all? { |track| track[:modules].all? { |lesson| lesson.quiz_questions.length == 10 } }
    assert tracks.all? { |track| track[:modules].map(&:difficulty_level).uniq.sort == Lesson::DIFFICULTY_LEVELS.keys.sort }
    assert tracks.all? { |track|
      track[:modules].map(&:position) == (1..track[:modules].length).to_a &&
        track[:assessment].position == track[:modules].length + 1
    }
    non_analytic_tracks = tracks.reject { |track| track[:subject].slug == "quimica-analitica" }
    assert(non_analytic_tracks.all? do |track|
      track[:modules].count { |lesson| lesson.position > SeedCurriculum::BASE_LEVELS.fetch(track[:subject].slug).length } == 3
    end)
    assert_includes Subject.pluck(:slug), "analise-instrumental"
    assert_includes Subject.pluck(:slug), "quimica-organica-ii"
    assert_includes Subject.pluck(:slug), "utilidades-efluentes"
    assert_equal 11, Subject.find_by!(slug: "quimica-analitica").lessons.where(lesson_type: "lesson").count
    assert_includes Subject.pluck(:slug), "estagio-curricular-tcc"

    module_lesson = tracks.first[:modules].first
    get lesson_path(subject_slug: module_lesson.subject.slug, id: module_lesson.id)

    assert_response :success
    assert_select ".eyebrow", /INICIANTE|INTERMEDIÁRIO|DIFÍCIL|PROFISSIONAL/
    assert_select ".assessment-question", 10
    assert_select ".assessment-instructions", /questões deste módulo/

    get subject_path("quimica-organica")
    assert_response :success
    assert_select ".lesson-level-heading h3", text: "Iniciante"
    assert_select ".lesson-level-heading h3", text: "Intermediário"
    assert_select ".lesson-level-heading h3", text: "Difícil"
    assert_select ".lesson-level-heading h3", text: "Profissional"
  end

  test "student must pass seven questions to complete a module" do
    module_lesson = @subject.lessons.create!(
      title: "Módulo com avaliação",
      summary: "Dez questões do módulo.",
      concept: "Conceito do módulo.",
      example: "Exemplo do módulo.",
      question: "Questão introdutória.",
      option_a: "A", option_b: "B", option_c: "C", option_d: "D",
      correct_option: "a",
      explanation: "Reveja o conteúdo.",
      xp: 10,
      position: 2
    )
    10.times do |index|
      module_lesson.quiz_questions.create!(
        question: "Questão #{index + 1}",
        option_a: "Correta",
        option_b: "Incorreta",
        option_c: "Alternativa C",
        option_d: "Alternativa D",
        correct_option: "a",
        explanation: "Revise o conceito.",
        position: index + 1
      )
    end
    answers = module_lesson.quiz_questions.each_with_index.to_h do |question, index|
      [ question.id.to_s, index < 7 ? "a" : "b" ]
    end

    post answer_lesson_path(subject_slug: @subject.slug, id: module_lesson.id), params: { answers: answers }

    assert_redirected_to lesson_path(subject_slug: @subject.slug, id: module_lesson.id, anchor: "exercicio")
    follow_redirect!
    assert_response :success
    assert_select ".feedback-correct", /Módulo concluído! Você acertou 7 de 10/
    assert_select ".completed-note"
  end

  test "passing the final assessment records progress and awards XP" do
    assessment = create_assessment

    post answer_lesson_path(subject_slug: @subject.slug, id: assessment.id),
      params: { answers: assessment_answers(assessment, correct_count: 7) }

    assert_redirected_to lesson_path(subject_slug: @subject.slug, id: assessment.id, anchor: "exercicio")
    follow_redirect!
    assert_response :success
    assert_select ".feedback-correct", /Teste aprovado/
    assert_select ".completed-note"
  end

  test "a score below seventy percent does not complete the final assessment" do
    assessment = create_assessment

    post answer_lesson_path(subject_slug: @subject.slug, id: assessment.id),
      params: { answers: assessment_answers(assessment, correct_count: 6) }

    assert_redirected_to lesson_path(subject_slug: @subject.slug, id: assessment.id, anchor: "exercicio")
    follow_redirect!
    assert_response :success
    assert_select ".feedback-retry", /São necessárias 7 respostas certas/
    assert_select ".needs-review", 4
    assert_select ".completed-note", count: 0
  end

  test "final assessment rejects incomplete submissions" do
    assessment = create_assessment
    answers = assessment_answers(assessment, correct_count: 10)
    answers.delete(assessment.quiz_questions.last.id.to_s)

    post answer_lesson_path(subject_slug: @subject.slug, id: assessment.id), params: { answers: answers }

    follow_redirect!
    assert_select ".feedback-retry", /Responda todas as questões/
    assert_select ".completed-note", count: 0
  end

  test "correct answer awards points and marks the lesson complete" do
    post answer_lesson_path(subject_slug: @subject.slug, id: @lesson.id), params: { answer: "a" }

    assert_redirected_to lesson_path(subject_slug: @subject.slug, id: @lesson.id, anchor: "exercicio")
    follow_redirect!
    assert_response :success
    assert_select ".feedback-correct"
    assert_select ".completed-note"
  end

  test "incorrect answer shows feedback without completing the lesson" do
    post answer_lesson_path(subject_slug: @subject.slug, id: @lesson.id), params: { answer: "b" }

    assert_redirected_to lesson_path(subject_slug: @subject.slug, id: @lesson.id, anchor: "exercicio")
    follow_redirect!
    assert_response :success
    assert_select ".feedback-retry"
    assert_select ".completed-note", count: 0
  end

  test "missing answer is handled without awarding progress" do
    post answer_lesson_path(subject_slug: @subject.slug, id: @lesson.id), params: { answer: "invalid" }

    assert_redirected_to lesson_path(subject_slug: @subject.slug, id: @lesson.id, anchor: "exercicio")
    follow_redirect!
    assert_select ".feedback-retry"
    assert_select ".completed-note", count: 0
  end

  private

  def create_assessment
    assessment = @subject.lessons.create!(
      title: "Teste final",
      summary: "Avaliação dos fundamentos.",
      concept: "Acerte pelo menos sete questões.",
      example: "Revise as aulas antes de começar.",
      question: "Responda às questões.",
      option_a: "Respostas disponíveis nas questões do teste.",
      option_b: "Respostas disponíveis nas questões do teste.",
      option_c: "Respostas disponíveis nas questões do teste.",
      option_d: "Respostas disponíveis nas questões do teste.",
      correct_option: "a",
      explanation: "Cada questão apresenta suas próprias alternativas e explicação.",
      xp: 20,
      position: 2
    )

    10.times do |index|
      assessment.quiz_questions.create!(
        question: "Questão #{index + 1}",
        option_a: "Alternativa correta",
        option_b: "Alternativa incorreta",
        option_c: "Outra alternativa incorreta",
        option_d: "Última alternativa incorreta",
        correct_option: "a",
        explanation: "Revise o conceito da questão.",
        position: index + 1
      )
    end
    assessment.update!(lesson_type: "assessment")
    assessment
  end

  def assessment_answers(assessment, correct_count:)
    assessment.quiz_questions.each_with_index.to_h do |question, index|
      [ question.id.to_s, index < correct_count ? "a" : "b" ]
    end
  end
end
