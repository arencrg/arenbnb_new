class Bnbroom < ActiveRecord::Base
    
    belongs_to :user, dependent: :destroy
    has_many :reviewcommentrates, dependent: :destroy
    has_many :photos
    
     mount_uploaders :photos, PhotoUploader
     serialize :photos, JSON
     
end
