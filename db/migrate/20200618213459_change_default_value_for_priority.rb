class ChangeDefaultValueForPriority < ActiveRecord::Migration[5.2]
  def change
    change_column_default :tags, :priority, 0
  end
end
