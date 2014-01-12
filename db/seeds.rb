# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
		top = TopDestination.new(id: 1,latitude: 45.167151, longitude: 29.270323, title: "Delta Dunarii", address: "Delta Dunarii", description: "", location_id: 1)
		top.save
		top = TopDestination.new(id: 2,latitude: 44.165089, longitude: 28.703154, title: "Marea Neagra", address: "Marea Neagra", description: "", location_id: 2)
		top.save
		top = TopDestination.new(id: 3,latitude: 44.427512, longitude: 26.087464, title: "Casa Poporului", address: " Palatul Parlamentului, str.Izvor nr.2-4, sect.5, Bucureşti", description: "", location_id: 3)
		top.save
		top = TopDestination.new(id: 4,latitude: 47.778169, longitude: 25.711214, title: "Manastirea Sucevita", address: "com. Sucevita, 727510, jud. Suceava", description: "", location_id: 4)
		top.save 
		top = TopDestination.new(id: 5,latitude: 47.656943, longitude: 25.571342, title: "Manastirea Moldovita", address: " sat Vatra Moldovitei, 727595, jud. Suceava", description: "", location_id: 5)
		top.save
		top = TopDestination.new(id: 6,latitude: 47.732872, longitude: 25.928640, title: "Manastirea Arbore", address: "Sat Arbore, Comuna Arbore, Judetul Suceava", description: "", location_id: 6)
		top.save
		top = TopDestination.new(id: 7,latitude: 47.517175, longitude: 25.864272, title: "Manastirea Voronet", address: "str. Voronet, nr 166, Gura Humorului, 725300, jud Suceava", description: "", location_id: 7)
		top.save

		castle = Castle.new(id: 8,latitude: 45.515094, longitude: 25.367076, title: "Castelul Bran", address: "Str. Moșoiu Traian, general 495- 498, Bran 507025 ", description: "", location_id: 8)
		castle.save
		castle = Castle.new(id: 9,latitude: 45.359913, longitude: 25.542729, title: "Castelul Peles", address: "str. Pelesului, nr. 2, 106100, Sinaia, jud. Prahova", description: "", location_id: 9)
		castle.save
		castle = Castle.new(id: 10,latitude: 45.749358 , longitude: 22.888352, title: "Castelul Corvinilor", address: "Strada Castelului 1-3
Hunedoara 331141", description: "", location_id: 10)
		castle.save
		castle = Castle.new(id: 11,latitude: 46.255552 , longitude: 24.173419, title: "Cetatea de Balta", address: "", description: "", location_id: 11)
		castle.save
		castle = Castle.new(id: 12,latitude: 45.845144, longitude: 24.974542, title: "Cetatea Fagaras", address: "", description: "", location_id: 12)
		castle.save
		castle = Castle.new(id: 13,latitude: 33, longitude: 33, title: "Cetatea Prejmer", address: "", description: "", location_id: 13)
		castle.save
		castle = Castle.new(id: 14,latitude: 33, longitude: 33, title: "Cetatea Rasnov", address: "", description: "", location_id: 14)
		castle.save


		city = City.new(id: 15,latitude: 33, longitude: 33, title: "Brasov", address: "", description: "", location_id: 15)
		city.save
		city = City.new(id: 16,latitude: 33, longitude: 33, title: "Bucuresti", address: "", description: "", location_id: 16)
		city.save
		city = City.new(id: 17,latitude: 33, longitude: 33, title: "Cluj", address: "", description: "", location_id: 17)
		city.save
		city = City.new(id: 18,latitude: 33, longitude: 33, title: "Constanta", address: "", description: "", location_id: 18)
		city.save
		city = City.new(id: 19,latitude: 33, longitude: 33, title: "Iasi", address: "", description: "", location_id: 19)
		city.save
		city = City.new(id: 20,latitude: 33, longitude: 33, title: "Timisoara", address: "", description: "", location_id: 20)
		city.save	

		event = Event.new(name: "Craciun", description: "frumos", date: ("2014-12-25").to_date)
		event.save
		event = Event.new(name: "Pastele", description: "frumos2", date: ("2014-4-20").to_date)
		event.save

		rate = RateEvent.new(user_id: 1, event_id: 1, note: 4)
		rate.save
		rate = RateEvent.new(user_id: 1, event_id: 2, note: 2)
		rate.save

		rate = RateLocation.new(user_id: 1, location_id: 1, note: 3)
		rate.save
		rate = RateLocation.new(user_id: 1, location_id: 3, note: 5)
		rate.save
		rate = RateLocation.new(user_id: 1, location_id: 7, note: 4)
		rate.save
		rate = RateLocation.new(user_id: 1, location_id: 10, note: 2)
		rate.save
		rate = RateLocation.new(user_id: 1, location_id: 17, note: 5)
		rate.save

	