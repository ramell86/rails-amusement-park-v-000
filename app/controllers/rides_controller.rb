class RidesController < ApplicationController
  def new
    @ride = Ride.new

  end
  def create
    # @attraction = Attraction.find_by(id: params[:attraction_id])
    @user = User.find_by(id: params[:user_id])
    @ride = Ride.new(ride_params)
    if @ride.save
    @ride.take_ride
    redirect_to @user
    else
      redirect_to attractions_path
    end
  end
  
  #instance method for a ride - call in controller
  private
  def ride_params
  
    params.permit(:attraction_id, :user_id)
  end
end
