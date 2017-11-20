require 'rails_helper'

RSpec.describe BnbroomsController, type: :controller do
  describe 'GET #index' do
      context 'when user is logged in' do

        before do
          sign_in
          get :index
        end

        it { is_expected.to respond_with :ok }
        it { is_expected.to render_template :index }
      end

  end
end
