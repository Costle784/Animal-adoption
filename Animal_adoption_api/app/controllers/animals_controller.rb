class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
    render json: @animals, include: :location
  end


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
    render json: @animal
  end

  def destroy
    @location = Location.find(params[:location_id])
    @animal = @location.animals.find(params[:id])
    @animal.destroy
    render json: {}
  end

  private
  def animal_params
    # I noticed gender changes weren't sticking, it was missing from `permit`
    params.require(:animal).permit(:animal_type, :name, :age, :is_adopted, :photo_url, :preferences, :days_left, :gender)
  end
end
