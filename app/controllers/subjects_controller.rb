class SubjectsController < ApplicationController
  def show
    @subject = Subject.includes(:lessons).find_by!(slug: params[:slug])
    @completed_lesson_ids = Array(session[:completed_lesson_ids]).map(&:to_s)
  end
end
