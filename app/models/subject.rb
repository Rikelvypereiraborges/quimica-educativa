class Subject < ApplicationRecord
  has_many :lessons, -> { order(:position) }, dependent: :destroy

  validates :name, :slug, :description, :icon, :color, presence: true
  validates :slug, uniqueness: true
end
