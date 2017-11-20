class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :bnbroom

  validates_presence_of :startdate, :enddate, :nightprice, :totalprice, :paymentstatus

end
