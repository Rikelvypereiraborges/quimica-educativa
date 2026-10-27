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
end
