class RemoveTaskIdIdFromTags < ActiveRecord::Migration[5.2]
  def change
    change_table :tags do |t|
      t.remove :task_id_id, :task_id
    end
  end
end
