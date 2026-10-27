class AddLessonTypeToLessons < ActiveRecord::Migration[8.1]
  def change
    add_column :lessons, :lesson_type, :string, default: "lesson", null: false
  end
end
