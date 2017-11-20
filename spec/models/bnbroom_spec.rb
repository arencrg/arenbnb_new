require 'rails_helper'

RSpec.describe Bnbroom, type: :model do

	subject { described_class.new(room_name: "new room name", room_price: 2300, room_type: "new room type", room_details: "new room details or whatever", bedcount: 4, bedroomcount: 2, bathroomcount: 1, neighborhood: "new room neighborhood address") }

	describe 'Check if there exists a room' do

		context 'is there a room' do
			it "checks if a room was created" do
				expect(subject).not_to be_nil
			end
		end

  	context 'validation of each entry' do
  	  it "checks if there is a name" do
          expect(subject.room_name).not_to be_empty
      end
 	    it "checks if there is a price" do
          expect(subject.room_price).not_to be_nil
        end
      it "checks if there is a room type" do
          expect(subject.room_type).not_to be_empty
      end
			it "checks if there is a room description" do
					expect(subject.room_details).not_to be_empty
			end
			it "checks if there is a bed count" do
					expect(subject.bedcount).not_to be_nil
			end
			it "checks if there is a bedroom count" do
					expect(subject.bedroomcount).not_to be_nil
				end
			it "checks if there is a bathroom count" do
					expect(subject.bathroomcount).not_to be_nil
			end
			it "checks if there is an address" do
					expect(subject.neighborhood).not_to be_empty
			end
    end

  end

end
