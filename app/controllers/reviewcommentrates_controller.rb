class ReviewcommentratesController < ApplicationController
    
    before_action :set_bnbrooms

def create
  
  @reviewcommentrate = @bnbroom.reviewcommentrates.create(reviewcommentrate_params)
  @reviewcommentrate.user_id = current_user.id
  @reviewcommentrate.user = current_user

  if @reviewcommentrate.save
      redirect_to bnbroom_path(@bnbroom)
  else
      render 'reviewcommentrate/newreview'
  end
  
end


def destroy
  @reviewcommentrate = @bnbroom.reviewcommentrates.find(params[:id])
  @reviewcommentrate.destroy
  redirect_to root_path
end

private

def reviewcommentrate_params
  params.require(:reviewcommentrate).permit(:reviewtitle, :comment, :rating)
end

def set_bnbrooms
  @bnbroom = Bnbroom.find(params[:bnbroom_id])
end

end
