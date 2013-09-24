class BuildingsController < ApplicationController

  def index
    @buildings = Building.all
  end

  def create
    Building.create(params[:building])
    redirect_to(buildings_path)
  end

  def new
  end

  def edit
    @building = Building.find(params[:id])
  end

  def show
    @building = Building.find(params[:id])
  end

  def update
    building = Building.find(params[:id])
    building.update_attributes(params[:building])
    redirect_to(buildings_path)
  end

  def destroy
    building = Building.find(params[:id])
    building.delete
    redirect_to(buildings_path)
  end

end
