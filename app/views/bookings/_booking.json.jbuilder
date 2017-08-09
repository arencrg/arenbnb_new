json.extract! booking, :id, :booking_id, :user_id, :bnbroom_id, :startdate, :enddate, :nightprice, :totalprice, :created_at, :updated_at
json.url booking_url(booking, format: :json)