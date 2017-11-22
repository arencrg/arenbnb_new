FactoryBot.define do
    # Define a basic devise user.
    factory :bnbroom do
      id 1
      room_name "Sample Room"
      room_price 2000
      room_type "Private Room"
      room_details "This is the description of the sample room."
      bedcount 2
      bedroomcount 1
      bathroomcount 2
      neighborhood "Eastwood Parkview Tower, Bagumbayan, Quezon City, Philippines"
      selfcheckin true
      tvavail true
      wifiavail true
      acavail true
      essentialsavail false
      parkingavail false
      kitchenvail true
      heatingavail false
      deskavail false
      famfriendly false
      latitude 14.61028
      longitude 121.0781323
    end
end
