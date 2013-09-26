class UsersController < ApplicationController
  def index
  end

  def show
    @user = current_user.id
  end

  def add
    id = params[:id]
    user = User.find(id)
    building = Building.find(params[:building_id])
    user.buildings << building
    redirect_to "/users/#{id}/favorites"
  end

  def favorites
    user = current_user
    @buildings = user.buildings.map {|hash| hash['name']}
  end

end
