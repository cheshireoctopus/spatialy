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

architect = Architect.create(name: "John Carl Warnecke")
building = Building.create(name: "AT&T Long Lines Building", style: "Brutalist", height: 550, floors: 29, street: "33 Thomas Street", y_coord: 40.71678, x_coord: -74.0061)
building1 = Building.create(name: "8 Spruce Street", style: "Deconstructivist", height: 876, floors: 76, street: "8 Spruce Street", y_coord: 40.710833, x_coord: -74.005556)
city = City.create(name: "New York", country: "United States of America", state: "NY", y_coord: 40.6700, x_coord: -73.9400)
