class AddGpaToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :gpa, :float
  end
end
