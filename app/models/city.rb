class City < ActiveRecord::Base
  attr_accessible :country, :name, :state, :y_coord, :x_coord

  has_many :buildings
end
