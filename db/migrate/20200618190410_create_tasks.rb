class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :priority
      t.string :description
      t.boolean :completed
      t.string :name
      t.time :time

      t.timestamps
    end
  end
end
