class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :attraction
  belongs_to :user


  def take_ride

  end
end
