class RidesController < ApplicationController
  def new
    @ride = Ride.new(ride_params)
    @ride.save
    @message = @ride.take_ride
    @user = User.find_by(id: params[:user_id])
    redirect_to user_path(@user, :message => @message)
  end
  def create
    
  end
  
  #instance method for a ride - call in controller
  private
  def ride_params
      params.permit(:attraction_id, :user_id)
  end
end
