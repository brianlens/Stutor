class AddUserIdToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :user_id, :integer
    add_foreign_key(:subjects, :users)
    #adds special column "user_id" to subjects table in db
  end
end
