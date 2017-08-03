class Bnbroom < ActiveRecord::Base
    
    belongs_to :user, dependent: :destroy
    has_many :reviewcommentrates, dependent: :destroy
    
     mount_uploaders :photos, PhotoUploader
     serialize :photos, JSON
     
end
