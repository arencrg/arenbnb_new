class CreateBnbrooms < ActiveRecord::Migration
  def change
    create_table :bnbrooms do |t|
      t.string  :room_name
      t.integer :room_price
      t.string  :room_type
      t.text    :room_details
      t.integer :bedcount
      t.integer :bedroomcount
      t.integer :bathroomcount
      t.string  :neighborhood
      t.boolean :selfcheckin
      t.boolean :tvavail
      t.boolean :wifiavail
      t.boolean :acavail
      t.boolean :essentialsavail
      t.boolean :parkingavail
      t.boolean :kitchenvail
      t.boolean :heatingavail
      t.boolean :deskavail
      t.boolean :famfriendly
      t.float   :latitude
      t.float   :longitude
      t.timestamps null: false
    end
  end
end
