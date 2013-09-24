class Building < ActiveRecord::Base
  attr_accessible :floors, :height, :name, :street, :style, :x_coord, :y_coord, :city_id, :user_id, :img

  belongs_to :city
  has_and_belongs_to_many :users
  has_and_belongs_to_many :architects
end
