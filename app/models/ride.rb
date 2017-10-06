class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :attraction
  belongs_to :user


  def take_ride

    if user.height < attraction.min_height && user.tickets < attraction.tickets
      return "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
    elsif user.tickets < attraction.tickets
      return "Sorry. You do not have enough tickets to ride the #{attraction.name}."
    elsif user.height < attraction.min_height
      return "Sorry. You are not tall enough to ride the #{attraction.name}."
    end

    new_tickets = user.tickets - attraction.tickets
    user.update_attribute(:tickets, new_tickets)
    
    new_nausea = user.nausea + attraction.nausea_rating
    user.update_attribute(:nausea, new_nausea)
    
    new_happiness = user.happiness + attraction.happiness_rating
    user.update_attribute(:happiness, new_happiness)
    
    return "Thanks for riding the #{attraction.name}!"
  end
end
