class RemoveSubjectIdIdFromTask < ActiveRecord::Migration[5.2]
  def change
    change_table :tasks do |t|
      t.remove :subject_id_id, :subject_id
    end
  end
end
