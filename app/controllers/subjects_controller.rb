class SubjectsController < ApplicationController
  def show
    @subject = Subject.includes(:lessons).find_by!(slug: params[:slug])
    @completed_lesson_ids = Array(session[:completed_lesson_ids]).map(&:to_s)
    @modules = @subject.lessons.reject(&:assessment?)
    @completed_module_count = @modules.count { |lesson| @completed_lesson_ids.include?(lesson.id.to_s) }
    @assessment = @subject.lessons.find(&:assessment?)
    @track_complete = @subject.lessons.all? { |lesson| @completed_lesson_ids.include?(lesson.id.to_s) }
  end
end
