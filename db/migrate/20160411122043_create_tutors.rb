class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :gpa
      t.string :subject
      t.string :postal_code
      t.string :email
      t.string :phone_number
      t.text :images
      t.text :description
      t.string :social_links
      t.string :price

      t.timestamps null: false
    end
  end
end
