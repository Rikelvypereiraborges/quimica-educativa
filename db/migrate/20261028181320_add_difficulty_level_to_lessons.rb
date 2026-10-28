class AddDifficultyLevelToLessons < ActiveRecord::Migration[8.1]
  def change
    add_column :lessons, :difficulty_level, :string, default: "iniciante", null: false
  end
end
