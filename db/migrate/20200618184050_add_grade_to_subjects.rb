class AddGradeToSubjects < ActiveRecord::Migration[5.2]
  def change
    add_column :subjects, :grade, :string
  end
end
