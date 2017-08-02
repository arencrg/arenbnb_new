class BnbroomsController < ApplicationController
  before_action :set_bnbroom, only: [:show, :edit, :update, :destroy]


  # GET /bnbrooms
  # GET /bnbrooms.json
  def index
    @bnbrooms = Bnbroom.all
  end

  # GET /bnbrooms/1
  # GET /bnbrooms/1.json
  def show
  end

  # GET /bnbrooms/new
  def new
    @bnbroom = Bnbroom.new
  end

  # GET /bnbrooms/1/edit
  def edit
  end

  # POST /bnbrooms
  # POST /bnbrooms.json
  
  def create
  @user = current_user
  @bnbroom = Bnbroom.create(bnbroom_params.merge(user_id: current_user.id))
  respond_to do |format|
    if @user.save
      format.html { redirect_to @bnbroom, notice: 'Room was successfully created.' }
      format.json { render json: @user.bnbroom, status: :created, location: @user.bnbroom }
    else
      format.html { render action: "new" }
      format.json { render json: @user.bnbroom.errors, status: :unprocessable_entity }
    end
  end
end
  

  # PATCH/PUT /bnbrooms/1
  # PATCH/PUT /bnbrooms/1.json
  def update
    respond_to do |format|
      if @bnbroom.update(bnbroom_params)
        format.html { redirect_to @bnbroom, notice: 'Bnbroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @bnbroom }
      else
        format.html { render :edit }
        format.json { render json: @bnbroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bnbrooms/1
  # DELETE /bnbrooms/1.json
  def destroy
    @bnbroom.destroy
    respond_to do |format|
      format.html { redirect_to bnbrooms_url, notice: 'Bnbroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bnbroom
      @bnbroom = Bnbroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bnbroom_params
      params.require(:bnbroom).permit(:room_name, :room_price, :room_type, :room_details, :bedcount, :bedroomcount, :bathroomcount, :country, :neighborhood, :selfcheckin, :tvavail, :wifiavail, :acavail, :essentialsavail, :parkingavail, :kitchenvail, :heatingavail, :deskavail, :famfriendly, {photos:[]})
    end
end
