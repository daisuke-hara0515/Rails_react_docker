class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.integer :difficulty, null: false
      t.text :description

      t.timestamps
    end
  end
end
