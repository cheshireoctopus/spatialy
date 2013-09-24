# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Architect.delete_all
Building.delete_all
City.delete_all

architect = Architect.create(first_name: "John", mid_name: "Carl", last_name: "Warnecke")
building = Building.create(name: "AT&T Long Lines Building", style: "Brutalist", height: 550, floors: 29, street: "33 Thomas Street", y_coord: 40.71678, x_coord: -74.0061)
city = City.create(name: "New York", country: "United States of America", state: "NY", y_coord: 40.6700, x_coord: -73.9400)
