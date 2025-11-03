class CreateLessons < ActiveRecord::Migration[8.1]
  def change
    create_table :lessons, id: :uuid do |t|
      t.string :lesson_name
      t.text :lesson_description
      t.references :course, type: :uuid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
