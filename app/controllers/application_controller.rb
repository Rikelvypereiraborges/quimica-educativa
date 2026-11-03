class ApplicationController < ActionController::Base
  helper_method :completed_lesson_ids

  private

  def completed_lesson_ids
    Array(session[:completed_lesson_ids]).filter_map do |id|
      Integer(id, exception: false)
    end
  end

  def update_review_queue(questions, answers)
    review_items = Array(session[:review_question_ids])
    questions.each do |question|
      selected_option = answers[question.id.to_s]
      review_items.reject! { |item| item["question_id"] == question.id.to_s }
      next if selected_option == question.correct_option

      review_items << {
        "question_id" => question.id.to_s,
        "due_at" => 3.days.from_now.iso8601
      }
    end
    session[:review_question_ids] = review_items.last(100)
  end
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
end
