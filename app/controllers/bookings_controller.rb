class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
    @booking.bnbroom = @bnbroom
    @booking.user = current_user
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
    @booking.bnbroom = @bnbroom
    @booking.user = current_user
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user

  respond_to do |format|
    if @booking.save
      format.html do
        redirect_to '/'
      end
      format.json { render json: @booking.to_json }
    else
      format.html { render :new} ## Specify the format in which you are rendering "new" page
      format.json { render json: @booking.errors } ## You might want to specify a json format as well
    end
  end
  end


  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to user_path(current_user), notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:booking_id, :user_id, :bnbroom_id, :startdate, :enddate, :nightprice, :totalprice)
    end
    
end
