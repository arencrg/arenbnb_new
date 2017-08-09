class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :booking_id
      t.references :user, index: true, foreign_key: true
      t.references :bnbroom, index: true, foreign_key: true
      t.string :startdate
      t.string :enddate
      t.integer :nightprice
      t.integer :totalprice

      t.timestamps null: false
    end
  end
end
