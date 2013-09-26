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
architect2= Architect.create(name: "Frank O. Gehry")
building1 = Building.create(name: "AT&T Long Lines Building", style: "Brutalist", height: 550, floors: 29, street: "33 Thomas Street", y_coord: 40.71678, x_coord: -74.0061, img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/33_Thomas_Sidewalk_View.JPG/360px-33_Thomas_Sidewalk_View.JPG')
building2 = Building.create(name: "8 Spruce Street", style: "Deconstructivist", height: 876, floors: 76, street: "8 Spruce Street", y_coord: 40.710833, x_coord: -74.005556, img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Beekman_Tower_fr_BB_jeh.jpg/346px-Beekman_Tower_fr_BB_jeh.jpg')
building3 = Building.create(name: "IAC Building", style: "Deconstructivist", height: 160, floors: 10, street: "555 West 18th Street", y_coord: 40.7456, x_coord: -74.0078, img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/IAC_night_jeh.jpg/544px-IAC_night_jeh.jpg')
building4 = Building.create(name: "Empire State Building", style: "Art Deco", height: 1454, floors: 102, street: "350 Fifth Avenue", y_coord: 40.748433, x_coord: -73.985656, img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Empire_State_Building_from_the_Top_of_the_Rock.jpg/360px-Empire_State_Building_from_the_Top_of_the_Rock.jpg')
building5 = Building.create(name: "One Madison Park", style: "Contemporary", height: 617.5, floors: 50, street: "23 East 22nd Street", y_coord: 40.740328, x_coord: -73.988157, img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/One_Madison_Park_from_Madison_Square_Park.jpg/374px-One_Madison_Park_from_Madison_Square_Park.jpg')
building6 = Building.create(name: "Flatiron Building", style: "Renaissnace", height: 285, floors: 22, street: "175 Fifth Avenue", y_coord: 40.741111, x_coord: -73.989722, img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Edificio_Fuller_%28Flatiron%29_en_2010_desde_el_Empire_State_crop_boxin.jpg/253px-Edificio_Fuller_%28Flatiron%29_en_2010_desde_el_Empire_State_crop_boxin.jpg')
building7 = Building.create(name: "Met Life Tower", style: "Italian Renaissnace Revival", height: 700, floors: 50, street: "1 Madison Avenue", y_coord: 40.74124, x_coord: -73.9874, img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Met_Life_Tower_from_below.jpg/360px-Met_Life_Tower_from_below.jpg')
building8 = Building.create(name: "The Hearst Tower", style: "Contemporary", height: 597, floors: 46, street: "300 West 57 Street", y_coord: 40.766729, x_coord: -73.983564, img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Hearstowernyc.JPG/320px-Hearstowernyc.JPG')






city = City.create(name: "New York", country: "United States of America", state: "NY", y_coord: 40.6700, x_coord: -73.9400)
