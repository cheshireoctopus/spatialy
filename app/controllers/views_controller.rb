class ViewsController < ApplicationController
  def index
    @cities = City.all
    @buildings = Building.all
    @architects = Architect.all
  end

  def admin
  end

  def allcities
  end

  def architects
    @architects = Architect.all
  end

  def show_building
    @building = Building.find(params[:id])
  end

  def buildings
    @buildings = Building.all
  end

  def cities
    @cities = City.all
  end

end
