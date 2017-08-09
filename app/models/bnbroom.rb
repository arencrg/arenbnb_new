class Bnbroom < ActiveRecord::Base
    
    belongs_to :user, dependent: :destroy
    has_many :reviewcommentrates, dependent: :destroy
    has_many :photos
    has_many :bookings
    
    mount_uploaders :photos, PhotoUploader
    serialize :photos, JSON
     
    geocoded_by :neighborhood
    after_validation :geocode, :if => :neighborhood_changed?
end
