class Lesson < ApplicationRecord
  belongs_to :subject
  has_many :quiz_questions, -> { order(:position) }, dependent: :destroy

  validates :title, :summary, :concept, :example, presence: true
  validates :question, :option_a, :option_b, :option_c, :option_d, :correct_option, :explanation,
    presence: true, unless: :assessment?
  validates :lesson_type, inclusion: { in: %w[lesson assessment] }
  validates :quiz_questions, presence: true, if: :assessment?
  validates :xp, numericality: { greater_than: 0 }

  def assessment?
    lesson_type == "assessment"
  end

  def answer_options
    {
      "a" => option_a,
      "b" => option_b,
      "c" => option_c,
      "d" => option_d
    }
  end
end
