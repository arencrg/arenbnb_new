class UsersController < ApplicationController
    
    def show
      @user = User.find(params[:id])
      @bnbrooms = @user.bnbrooms.all
    end
    
    def index
      @users = User.all
    end

end