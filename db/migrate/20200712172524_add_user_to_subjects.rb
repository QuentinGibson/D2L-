class AddUserToSubjects < ActiveRecord::Migration[5.2]
  def change
    add_reference :subjects, :user, foreign_key: true, index: true
  end
end
