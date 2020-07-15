class ChangeColorToProirity < ActiveRecord::Migration[5.2]
  def change
    rename_column :tasks, :color, :priority
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
