class Reviewcommentrate < ActiveRecord::Base
    belongs_to :user
    belongs_to :bnbroom

    validates_presence_of :reviewtitle, :comment, :rating
end
