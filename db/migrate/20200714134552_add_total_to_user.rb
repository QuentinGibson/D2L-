class AddTotalToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :total, :integer
  end
end
