class QuizQuestion < ApplicationRecord
  belongs_to :lesson

  validates :question, :option_a, :option_b, :option_c, :option_d, :explanation, presence: true
  validates :correct_option, inclusion: { in: %w[a b c d] }
  validates :position, numericality: { only_integer: true, greater_than: 0 }

  def answer_options
    {
      "a" => option_a,
      "b" => option_b,
      "c" => option_c,
      "d" => option_d
    }
  end
end
