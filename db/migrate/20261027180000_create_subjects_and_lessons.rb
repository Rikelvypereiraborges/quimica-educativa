class CreateSubjectsAndLessons < ActiveRecord::Migration[8.1]
  def change
    create_table :subjects do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.text :description, null: false
      t.string :icon, null: false
      t.string :color, null: false
      t.integer :position, null: false, default: 0

      t.timestamps
    end

    add_index :subjects, :slug, unique: true

    create_table :lessons do |t|
      t.references :subject, null: false, foreign_key: true
      t.string :title, null: false
      t.string :summary, null: false
      t.text :concept, null: false
      t.text :example, null: false
      t.string :question, null: false
      t.string :option_a, null: false
      t.string :option_b, null: false
      t.string :option_c, null: false
      t.string :option_d, null: false
      t.string :correct_option, null: false
      t.text :explanation, null: false
      t.integer :xp, null: false, default: 10
      t.integer :position, null: false, default: 0

      t.timestamps
    end
  end
end
