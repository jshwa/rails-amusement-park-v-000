class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attractions.find_by(id: params[:id])
  end

  def new
    @attraction = Attraction.new
  end

  def create

  end

  private

  def attraction_params
    params.require(:attraction).permit(:name)
  end
end
