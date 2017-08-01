class Bnbroom < ActiveRecord::Base
    belongs_to :user
    mount_uploaders :photos, PhotoUploader
    serialize :photos, JSON
    has_many :photos, dependent: :destroy
end
