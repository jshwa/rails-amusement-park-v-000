class AttractionsController < ApplicationController
  def index
    current_user
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find_by(id: params[:id])
  end

  def new
    if current_user.admin == true
      @attraction = Attraction.new
    else
      redirect_to attractions_path
    end
  end

  def create
    if current_user.admin == true
      attraction = Attraction.new(attraction_params)
      if attraction.save
        redirect_to attraction_path(attraction)
      else
        redirect_to: attraction_new_path
      end
    else
      redirect_to attractions_path
    end
  end

  def take_ride
    if logged_in?
      ride = Ride.create(user_id: current_user.id, attraction_id: params[:attraction_id])
      flash[:notice] = ride.take_ride
      redirect_to user_path(@current_user)
    end
  end

  private

  def attraction_params
    params.require(:attraction).permit(:name, :min_height, :nausea_rating, :happiness_rating, :tickets)
  end
end
