class AddSubjectToTask < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :subject_id, index:true
  end
end
