class AddColorToTags < ActiveRecord::Migration[5.2]
  def up
    add_column :tags, :color, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
  def def down
    drop_column :tags, :color, :string
  end
end
