class Building < ActiveRecord::Base
  attr_accessible :architect, :floors, :height, :name, :street, :style, :x_coord, :y_coord

  belongs_to :city
end
