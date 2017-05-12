class LocationsController < ApplicationController
  def index
    @locations = Location.all
    render json: @locations
  end

  def show
    @location = Location.find(params[:id])
    @animals = @location.animals

    render json: @location, include: :animals
  end
end
