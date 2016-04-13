class AddUserIdAndSubjectIdToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :user_id, :integer
    add_column :reservations, :subject_id, :integer
    add_foreign_key(:reservations, :users, null:false)
    add_foreign_key(:reservations, :subjects, null:false)
  end
end
