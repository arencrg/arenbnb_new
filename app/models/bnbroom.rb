class Bnbroom < ActiveRecord::Base
    
    belongs_to :user, dependent: :destroy
    
     mount_uploaders :photos, PhotoUploader
     serialize :photos, JSON
     
end
