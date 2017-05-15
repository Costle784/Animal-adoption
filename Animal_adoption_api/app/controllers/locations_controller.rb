class LocationsController < ApplicationController
  def index
    @locations = Location.all
    render json: @locations
  end

  def new
    @location = Location.find(params[:location_id])
    @animal = @location.animals.new
    render json: @animal
  end

  def show
    @location = Location.find(params[:id])
    @animals = @location.animals

    render json: @location, include: :animals
  end
end
