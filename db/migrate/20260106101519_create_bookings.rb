class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.integer :number_of_seats
      t.integer :total_price
      t.integer :booking_status

      t.timestamps
    end
  end
end
