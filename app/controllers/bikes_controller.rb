class BikesController < ApplicationController
  
  skip_before_action:verify_authenticity_token

  before_action :set_bike, only:[:show, :update, :destroy]

  def index
    @bikes = Bike.all
    render json: @bikes
  end

  def show
   
    render json: @bike
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      render json: @bike
    else
      render json: {error: @bike.errors}
    end
  end

  def update
    
    if @bike.update(bike_params)
      render json: @bike
    else
      render json: {error: @bike.errors}
    end
  end

  def destroy
    
    if @bike.destroy
      render json: {message: "bike  has been deleted successfully"}
    else
      render json: {error: @bike.errors}
    end
  end

  private
  def bike_params
    params.require(:bike).permit(:name, :model_no, :price, :color, :lighting)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
