class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :userid
      t.integer :eventid

      t.timestamps
    end
  end
end
