class QuizzesController < ApplicationController
  def index
    @subjects = Subject.order(:position)
    @question_count = QuizQuestion.joins(:lesson).where(lessons: { lesson_type: "lesson" }).count
  end

  def start
    subject = Subject.find_by(slug: params[:subject_slug]) if params[:subject_slug].present?
    if params[:subject_slug].present? && subject.nil?
      redirect_to quizzes_path, alert: "Selecione uma trilha disponível para iniciar o simulado."
      return
    end

    question_pool = QuizQuestion.joins(:lesson).where(lessons: { lesson_type: "lesson" })
    question_pool = question_pool.where(lessons: { subject_id: subject.id }) if subject
    question_ids = question_pool.order(Arel.sql("RANDOM()")).limit(10).pluck(:id)
    if question_ids.length < 10
      redirect_to quizzes_path, alert: "Ainda não há dez questões disponíveis para essa seleção."
      return
    end

    session[:practice_question_ids] = question_ids
    redirect_to quiz_path
  end

  def show
    @questions = selected_questions
    return if @questions

    redirect_to quizzes_path, alert: "Inicie um simulado para receber um novo conjunto de questões."
  end

  def submit
    questions = selected_questions
    unless questions
      redirect_to quizzes_path, alert: "Inicie um simulado antes de enviar respostas."
      return
    end

    submitted = params[:answers]
    answers = if submitted.respond_to?(:permit)
      submitted.permit(*questions.map { |question| question.id.to_s }).to_h
    else
      {}
    end
    valid = questions.all? do |question|
      selected = answers[question.id.to_s]
      selected.present? && question.answer_options.key?(selected)
    end
    unless valid
      redirect_to quiz_path, alert: "Responda às dez questões com uma alternativa válida."
      return
    end

    update_review_queue(questions, answers)
    @answers = answers
    @correct_count = questions.count { |question| answers[question.id.to_s] == question.correct_option }
    @passed = @correct_count >= 7
    @questions = questions
    render :results
  end

  private

  def selected_questions
    ids = Array(session[:practice_question_ids]).filter_map { |id| Integer(id, exception: false) }
    return if ids.length != 10

    questions_by_id = QuizQuestion.includes(lesson: :subject).where(id: ids).index_by(&:id)
    return unless questions_by_id.length == ids.length

    ids.map { |id| questions_by_id.fetch(id) }
  end
end
