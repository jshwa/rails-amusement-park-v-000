class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride
    user = User.find(self.user_id)
    attraction = Attraction.find(self.attraction_id)
  end
end
