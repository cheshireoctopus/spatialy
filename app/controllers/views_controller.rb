class ViewsController < ApplicationController
  def index
    @cities = City.all
    @buildings = Building.all
    @architects = Architect.all
  end

  def admin
  end

  def architects
    @architects = Architect.all
  end

  def buildings
    @buildings = Building.all
  end

  def cities
    @cities = City.all
  end

end
