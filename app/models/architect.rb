class Architect < ActiveRecord::Base
  attr_accessible :first_name, :mid_name, :last_name

  has_and_belongs_to_many :buildings
end
