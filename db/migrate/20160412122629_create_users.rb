class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firs_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :email
      t.string :phone
      t.string :city

      t.timestamps null: false
    end
  end
end
