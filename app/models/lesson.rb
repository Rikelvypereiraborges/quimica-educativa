class Lesson < ApplicationRecord
  belongs_to :subject

  validates :title, :summary, :concept, :example, :question, :correct_option, :explanation, presence: true
  validates :xp, numericality: { greater_than: 0 }

  def answer_options
    {
      "a" => option_a,
      "b" => option_b,
      "c" => option_c,
      "d" => option_d
    }
  end
end
