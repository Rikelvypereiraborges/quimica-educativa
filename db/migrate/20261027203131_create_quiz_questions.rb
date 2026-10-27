class CreateQuizQuestions < ActiveRecord::Migration[8.1]
  def change
    create_table :quiz_questions do |t|
      t.references :lesson, null: false, foreign_key: true
      t.text :question, null: false
      t.string :option_a, null: false
      t.string :option_b, null: false
      t.string :option_c, null: false
      t.string :option_d, null: false
      t.string :correct_option, null: false
      t.text :explanation, null: false
      t.integer :position, null: false

      t.timestamps
    end

    add_index :quiz_questions, [ :lesson_id, :position ], unique: true
  end
end
