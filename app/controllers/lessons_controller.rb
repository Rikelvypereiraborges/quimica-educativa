class LessonsController < ApplicationController
  before_action :set_subject_and_lesson

  def show
    @completed = Array(session[:completed_lesson_ids]).include?(@lesson.id.to_s)
  end

  def answer
    selected_option = params[:answer].to_s

    unless @lesson.answer_options.key?(selected_option)
      redirect_to lesson_path(subject_slug: @subject.slug, id: @lesson.id, anchor: "exercicio"),
        alert: "Escolha uma alternativa para conferir sua resposta."
      return
    end

    if selected_option == @lesson.correct_option
      completed_ids = Array(session[:completed_lesson_ids]).map(&:to_s)
      session[:completed_lesson_ids] = (completed_ids + [ @lesson.id.to_s ]).uniq
      redirect_to lesson_path(subject_slug: @subject.slug, id: @lesson.id, anchor: "exercicio"),
        notice: "Resposta certa! +#{@lesson.xp} XP. #{@lesson.explanation}"
    else
      redirect_to lesson_path(subject_slug: @subject.slug, id: @lesson.id, anchor: "exercicio"),
        alert: "Ainda não! #{@lesson.explanation}"
    end
  end

  private

  def set_subject_and_lesson
    @subject = Subject.find_by!(slug: params[:subject_slug])
    @lesson = @subject.lessons.find(params[:id])
  end
end
