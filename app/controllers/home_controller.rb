class HomeController < ApplicationController
  def index
    @subjects = Subject.includes(:lessons).order(:position)
    completed_lessons = Lesson.where(id: completed_lesson_ids)
    @completed_lessons_count = completed_lessons.count
    @earned_xp = completed_lessons.sum(:xp)
    @lesson_count = Lesson.where(lesson_type: "lesson").count
  end

  private

  def completed_lesson_ids
    Array(session[:completed_lesson_ids]).filter_map do |id|
      Integer(id, exception: false)
    end
  end
end
