class BookingsController < ApplicationController
  
  skip_before_action:verify_authenticity_token

  before_action :set_booking, only:[:show, :update, :destroy]

  before_action :check_bike_availability, only:[:create]

  def index
    @bookings = Booking.all
    render json: @bookings
  end

  def show
    
    render json: @booking
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      render json: @booking
    else
      render json: {error: @booking.errors}
    end
  end

  def update
   
    if @booking.update(booking_params)
      render json: @booking
    else
      render json: {error: @booking.errors}
    end
  end

  def destroy
    
    if @booking.destroy
      render json: {message: "bike  has been deleted successfully"}
    else
      render json: {error: @booking.errors}
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:booking_process, :payment_option, :security, :rating, :status, :total_amount, :date, :bike_id, :user_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end 

  def check_bike_availability
    
    @bike = Bike.find_by(id:params[:bike_id])
    if @bike.nil?
      render json: { message: 'Bike not found' }
    elsif @bike.bookings.any?
      render json: { message: 'This bike is already booked' }
    
    end
  end
end
