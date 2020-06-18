class AddSubjectToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :subject
  end
end
