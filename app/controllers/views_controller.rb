class ViewsController < ApplicationController
  def index
    @cities = City.all
    @buildings = Building.all
    @architects = Architect.all
  end

  def admin
  end

  def architects
  end

  def buildings
  end

  def cities
  end

end
