class AddDuedateToTodo < ActiveRecord::Migration
  def change
    add_column :todos, :duedate, :datetime
  end
end
