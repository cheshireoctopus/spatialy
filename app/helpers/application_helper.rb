module ApplicationHelper
   def get_buildings
    Building.all
  end

  def get_architects
    Architect.all
  end
end


