class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def create
    City.create(params[:city])
    redirect_to(cities_path)
  end

  def new
  end

  def edit
    @city = City.find(params[:id])
  end

  def show
    @city = City.find(params[:id])
  end

  def update
    city = City.find(params[:id])
    city.update_attributes(params[:city])
    redirect_to(cities_path)
  end

  def destroy
    city = City.find(params[:id])
    city.delete
    redirect_to(cities_path)
  end

end
