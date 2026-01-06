class CreateShows < ActiveRecord::Migration[7.1]
  def change
    create_table :shows do |t|
      t.time :show_time
      t.integer :available_seats
      t.decimal :seat_price, precision: 7, scale: 2

      t.timestamps
    end
  end
end
