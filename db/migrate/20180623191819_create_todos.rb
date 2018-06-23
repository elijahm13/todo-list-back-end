class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description
      t.string :pomodoros
      t.boolean :status

      t.timestamps null: false
    end
  end
end
