class City < ActiveRecord::Base
  attr_accessible :country, :name, :state

  has_many :buildings
end
