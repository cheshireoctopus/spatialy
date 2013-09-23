class Building < ActiveRecord::Base
  attr_accessible :architect, :floors, :height, :name, :street, :style, :x_coord, :y_coord

  belongs_to :city
  has_and_belongs_to_many :architects
end
