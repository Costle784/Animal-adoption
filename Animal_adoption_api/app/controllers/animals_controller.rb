class AnimalsController < ApplicationController

  def create
    @location = Location.find(params[:location_id])
    @animal = @location.animals.create!(animal_params)
    render json: @animal
  end

  def new
    @location = Location.find(params[:location_id])
    @animal = @location.animals.new
    render json: @animal
  end

  def edit
    @location = Location.find(params[:location_id])
    @animal = @location.animals.find(params[:id])
    render json: @animal
  end

  def show
    @location = Location.find(params[:location_id])
    @animal = @location.animals.find(params[:id])
    render json: @animal
  end

  def update
    @location = Location.find(params[:location_id])
    @animal = @location.animals.find(params[:id])
    @animal.update(animal_params)
    redirect_to location_animal_path(@location, @animal)
  end

  def destroy
    @location = Location.find(params[:location_id])
    @animal = @location.animals.find(params[:id])
    @animal.destroy
    redirect_to location_path(@location)
  end

  private
  def animal_params
    params.require(:animal).permit(:animal_type, :name, :age, :is_adopted, :photo_url, :preferences, :days_left)
  end
end
