class ChangeDateAndTimeColumnsInReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :date
    remove_column :reservations, :time
    add_column :reservations, :datetime, :datetime, null: false
  end
end
