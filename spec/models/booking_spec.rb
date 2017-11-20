require 'rails_helper'

RSpec.describe Booking, type: :model do

	subject { described_class.new(startdate: "11-11-2017", enddate: "16-11-2017", nightprice: 1200, totalprice: 6000) }

	describe 'Check if there exists a booking' do

		context 'is there a booking' do
			it "checks if a booking was created" do
				expect(subject).not_to be_nil
			end
		end

  	context 'validation of each entry' do
  	  it "checks if there is a start date" do
          expect(subject.startdate).not_to be_nil
      end
 	    it "checks if there is an end date" do
					expect(subject.enddate).not_to be_nil
      end
      it "checks if there is a per night price" do
          expect(subject.nightprice).not_to be_nil
      end
			it "checks if there is a total price" do
					expect(subject.totalprice).not_to be_nil
			end
    end

  end

end
