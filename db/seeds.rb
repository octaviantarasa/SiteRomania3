# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
		top = TopDestination.new(latitude: 45.167151, longitude: 29.270323, title: "Delta Dunarii", address: "Delta Dunarii", description: "")
		top.save
		top = TopDestination.new(latitude: 44.165089, longitude: 28.703154, title: "Marea Neagra", address: "Marea Neagra", description: "")
		top.save
		top = TopDestination.new(latitude: 44.427512, longitude: 26.087464, title: "Casa Poporului", address: " Palatul Parlamentului, str.Izvor nr.2-4, sect.5, Bucureşti", description: "")
		top.save
		top = TopDestination.new(latitude: 47.778169, longitude: 25.711214, title: "Manastirea Sucevita", address: "com. Sucevita, 727510, jud. Suceava", description: "")
		top.save 
		top = TopDestination.new(latitude: 47.656943, longitude: 25.571342, title: "Manastirea Moldovita", address: " sat Vatra Moldovitei, 727595, jud. Suceava", description: "")
		top.save
		top = TopDestination.new(latitude: 47.732872, longitude: 25.928640, title: "Manastirea Arbore", address: "Sat Arbore, Comuna Arbore, Judetul Suceava", description: "")
		top.save
		top = TopDestination.new(latitude: 47.517175, longitude: 25.864272, title: "Manastirea Voronet", address: "str. Voronet, nr 166, Gura Humorului, 725300, jud Suceava", description: "")
		top.save
		top = TopDestination.new(latitude: 45.515094, longitude: 25.367076, title: "Castelul Bran", address: "Str. Moșoiu Traian, general 495- 498, Bran 507025 ", description: "")
		top.save
		top = TopDestination.new(latitude: 45.359913, longitude: 25.542729, title: "Castelul Peles", address: "str. Pelesului, nr. 2, 106100, Sinaia, jud. Prahova", description: "")
		top.save