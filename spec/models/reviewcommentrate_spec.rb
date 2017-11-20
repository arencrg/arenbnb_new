require 'rails_helper'

RSpec.describe Reviewcommentrate, type: :model do

	subject { described_class.new(reviewtitle: "ok", comment: "meh, it was fine", rating: 3) }

	describe 'Check if there exists a review' do

		context 'is there a review' do
			it "checks if a review was created" do
				expect(subject).not_to be_nil
			end
		end

  	context 'validation of each entry' do
  	  it "checks if there is a review title (or summary)" do
          expect(subject.reviewtitle).not_to be_empty
      end
 	    it "checks if there is a review body (as in a paragraph of text)" do
          expect(subject.comment).not_to be_empty
      end
      it "checks if there is a rating (for the stars)" do
          expect(subject.rating).not_to be_nil
      end
    end

  end
end
