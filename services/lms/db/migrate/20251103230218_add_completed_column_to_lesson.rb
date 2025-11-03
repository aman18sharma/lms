class AddCompletedColumnToLesson < ActiveRecord::Migration[8.1]
  def change
    add_column :lessons, :completed, :boolean, default: false
  end
end
