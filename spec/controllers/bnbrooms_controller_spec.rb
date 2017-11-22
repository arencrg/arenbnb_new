require "rails_helper"

RSpec.describe BnbroomsController, type: :controller do
  describe 'GET #index' do
      context 'when user is logged in' do
        login_user
        it "checks if the index page loads" do
          get :index
          expect(subject).to render_template(:index)
        end
      end

      context 'when user is NOT logged in' do
          #no login
        it "checks if the index page loads" do
          get :index
          expect(subject).to redirect_to( new_user_session_path )
        end
      end
  end

end
