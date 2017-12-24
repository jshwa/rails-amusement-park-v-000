class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find_by(id: params[:id])
  end

  def new
    @attraction = Attraction.new
  end

  def create

  end

  def take_ride
    if logged_in?
      @attraction = Attraction.find_by(id: params[:attraction_id])
      Ride.take_ride
      redirect_to user_path(@current_user)
    end
  end

  private

  def attraction_params
    params.require(:attraction).permit(:name)
  end
end
