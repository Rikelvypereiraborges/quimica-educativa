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
