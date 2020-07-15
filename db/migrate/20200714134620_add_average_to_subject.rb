class AddAverageToSubject < ActiveRecord::Migration[5.2]
  def change
    add_column :subjects, :average, :integer
  end
end
