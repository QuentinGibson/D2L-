class RemoveTaskIdFromTags < ActiveRecord::Migration[5.2]
  def change
    remove_reference :tags, :task, foreign_key: true
  end
end
