require "rails_helper"
require "spec_helper"


RSpec.describe BnbroomsController, type: :controller do
  describe 'GET #index' do
      context 'when user is logged in' do
        before do
          sign_in
          # error cause the signed in user is looking for an avatar? maybe?
          subject { get :index }
        end
        it "checks if the index page loads" do
          expect(subject).to render_template(:index)
        end
      end

      context 'when user is NOT logged in' do
        before do
          sign_in nil
          subject { get :index }
        end
        it "checks if the index page loads" do
          expect(subject).to render_template(:index)
        end
      end

## stop erasing these two ends, ano ba hahahaha
  end
end
