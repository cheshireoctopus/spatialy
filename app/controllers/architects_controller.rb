class ArchitectsController < ApplicationController

  def index
    @architects = Architect.all
  end

  def create
    Architect.create(params[:architect])
    redirect_to(architects_path)
  end

  def new
  end

  def edit
    @architect = Architect.find(params[:id])
  end

  def show
    @architect = Architect.find(params[:id])
  end

  def update
    architect = Architect.find(params[:id])
    architect.update_attributes(params[:architect])
    redirect_to(architects_path)
  end

  def destroy
    architect = Architect.find(params[:id])
    architect.delete
    redirect_to(architects_path)
  end

end
