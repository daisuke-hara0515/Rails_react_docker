class AddUserToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :user, :references, null: false, foreign_key: true
  end
end
