class LessonsController < ApplicationController
  before_action :set_subject_and_lesson

  def show
    @completed = Array(session[:completed_lesson_ids]).include?(@lesson.id.to_s)
    return unless @lesson.assessment?

    @assessment_questions = @lesson.quiz_questions.to_a
    @assessment_passing_score = (@assessment_questions.size * 0.7).ceil
    @assessment_feedback = flash[:assessment_feedback]
  end

  def answer
    return answer_assessment if @lesson.assessment?

    selected_option = params[:answer].to_s

    unless @lesson.answer_options.key?(selected_option)
      redirect_to lesson_path(subject_slug: @subject.slug, id: @lesson.id, anchor: "exercicio"),
        alert: "Escolha uma alternativa para conferir sua resposta."
      return
    end

    completed_ids = Array(session[:completed_lesson_ids]).map(&:to_s)

    if selected_option == @lesson.correct_option
      session[:completed_lesson_ids] = (completed_ids + [ @lesson.id.to_s ]).uniq
      notice = if completed_ids.include?(@lesson.id.to_s)
        "Resposta certa! Esta aula já foi concluída. #{@lesson.explanation}"
      else
        "Resposta certa! +#{@lesson.xp} XP. #{@lesson.explanation}"
      end
      redirect_to lesson_path(subject_slug: @subject.slug, id: @lesson.id, anchor: "exercicio"), notice: notice
    else
      redirect_to lesson_path(subject_slug: @subject.slug, id: @lesson.id, anchor: "exercicio"),
        alert: "Ainda não! #{@lesson.explanation}"
    end
  end

  private

  def answer_assessment
    questions = @lesson.quiz_questions.to_a
    submitted_answers = params[:answers]
    answers = if submitted_answers.respond_to?(:permit)
      submitted_answers.permit(*questions.map { |question| question.id.to_s }).to_h
    else
      {}
    end

    valid_submission = questions.any? && questions.all? { |question|
      selected_option = answers[question.id.to_s]
      selected_option.present? && question.answer_options.key?(selected_option)
    }

    unless valid_submission
      redirect_to lesson_path(subject_slug: @subject.slug, id: @lesson.id, anchor: "exercicio"),
        alert: "Responda todas as questões com uma das alternativas para enviar o teste."
      return
    end

    correct_count = questions.count { |question| answers[question.id.to_s] == question.correct_option }
    passing_score = (questions.length * 0.7).ceil
    passed = correct_count >= passing_score
    completed_ids = Array(session[:completed_lesson_ids]).map(&:to_s)
    was_completed = completed_ids.include?(@lesson.id.to_s)

    if passed
      session[:completed_lesson_ids] = (completed_ids + [ @lesson.id.to_s ]).uniq
      flash[:notice] = if was_completed
        "Teste aprovado! Você acertou #{correct_count} de #{questions.length}; o XP já havia sido concedido."
      else
        "Teste aprovado! Você acertou #{correct_count} de #{questions.length} e conquistou #{@lesson.xp} XP."
      end
    else
      flash[:alert] = "Você acertou #{correct_count} de #{questions.length}. São necessárias #{passing_score} respostas certas; revise os comentários e tente novamente."
    end

    flash[:assessment_feedback] = {
      "score" => correct_count,
      "total" => questions.length,
      "passed" => passed,
      "answers" => answers
    }
    redirect_to lesson_path(subject_slug: @subject.slug, id: @lesson.id, anchor: "exercicio")
  end

  def set_subject_and_lesson
    @subject = Subject.find_by!(slug: params[:subject_slug])
    @lesson = @subject.lessons.find(params[:id])
  end
end
