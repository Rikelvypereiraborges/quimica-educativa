class HomeController < ApplicationController
  def index
    @subjects = Subject.includes(:lessons).order(:position)
    completed_lessons = Lesson.where(id: completed_lesson_ids)
    @completed_lessons_count = completed_lessons.count
    @earned_xp = completed_lessons.sum(:xp)
    @lesson_count = Lesson.where(lesson_type: "lesson").count
    @review_count = Array(session[:review_question_ids]).length
  end
end
