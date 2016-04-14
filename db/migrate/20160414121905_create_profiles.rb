class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :city
      t.text :description
      t.integer :price
      t.string :image

      t.timestamps null: false
    end
  end
end
