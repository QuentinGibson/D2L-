class AddForeignKeyToTags < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :tags, :tasks
  end
end
