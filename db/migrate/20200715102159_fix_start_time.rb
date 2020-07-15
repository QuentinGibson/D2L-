class FixStartTime < ActiveRecord::Migration[5.2]
def self.up
    rename_column :tasks, :start_date, :start_time
  end

  def self.down
  end
end
