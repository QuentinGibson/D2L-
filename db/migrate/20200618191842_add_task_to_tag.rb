class AddTaskToTag < ActiveRecord::Migration[5.2]
  def change
    add_reference :tags, :task_id, index:true
  end
end
