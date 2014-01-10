# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
		top = TopDestination.new(latitude: 45.167151, longitude: 29.270323, title: "Delta Dunarii", address: "Delta Dunarii", description: "", location_id: 1)
		top.save
		top = TopDestination.new(latitude: 44.165089, longitude: 28.703154, title: "Marea Neagra", address: "Marea Neagra", description: "", location_id: 2)
		top.save
		top = TopDestination.new(latitude: 44.427512, longitude: 26.087464, title: "Casa Poporului", address: " Palatul Parlamentului, str.Izvor nr.2-4, sect.5, Bucureşti", description: "", location_id: 3)
		top.save
		top = TopDestination.new(latitude: 47.778169, longitude: 25.711214, title: "Manastirea Sucevita", address: "com. Sucevita, 727510, jud. Suceava", description: "", location_id: 4)
		top.save 
		top = TopDestination.new(latitude: 47.656943, longitude: 25.571342, title: "Manastirea Moldovita", address: " sat Vatra Moldovitei, 727595, jud. Suceava", description: "", location_id: 5)
		top.save
		top = TopDestination.new(latitude: 47.732872, longitude: 25.928640, title: "Manastirea Arbore", address: "Sat Arbore, Comuna Arbore, Judetul Suceava", description: "", location_id: 6)
		top.save
		top = TopDestination.new(latitude: 47.517175, longitude: 25.864272, title: "Manastirea Voronet", address: "str. Voronet, nr 166, Gura Humorului, 725300, jud Suceava", description: "", location_id: 7)
		top.save

		castle = Castle.new(latitude: 45.515094, longitude: 25.367076, title: "Castelul Bran", address: "Str. Moșoiu Traian, general 495- 498, Bran 507025 ", description: "", location_id: 8)
		castle.save
		castle = Castle.new(latitude: 45.359913, longitude: 25.542729, title: "Castelul Peles", address: "str. Pelesului, nr. 2, 106100, Sinaia, jud. Prahova", description: "", location_id: 9)
		castle.save
		castle = Castle.new(latitude: 33 , longitude: 33, title: "Cetatea de Balta", address: "", description: "", location_id: 10)
		castle.save
		castle = Castle.new(latitude: 33, longitude: 33, title: "Cetatea Fagaras", address: "", description: "", location_id: 11)
		castle.save
		castle = Castle.new(latitude: 33, longitude: 33, title: "Cetatea Prejmer", address: "", description: "", location_id: 12)
		castle.save
		castle = Castle.new(latitude: 33, longitude: 33, title: "Cetatea Rasnov", address: "", description: "", location_id: 13)
		castle.save
		castle = Castle.new(latitude: 33, longitude: 33, title: "Cetatea Valea Viilor", address: "", description: "", location_id: 14)
		castle.save
		castle = Castle.new(latitude: 33, longitude: 33, title: "Cetatea Viscri", address: "", description: "", location_id: 15)
		castle.save

		city = City.new(latitude: 33, longitude: 33, title: "Brasov", address: "", description: "", location_id: 16)
		city.save
		city = City.new(latitude: 33, longitude: 33, title: "Bucuresti", address: "", description: "", location_id: 17)
		city.save
		city = City.new(latitude: 33, longitude: 33, title: "Cluj", address: "", description: "", location_id: 18)
		city.save
		city = City.new(latitude: 33, longitude: 33, title: "Constanta", address: "", description: "", location_id: 19)
		city.save
		city = City.new(latitude: 33, longitude: 33, title: "Iasi", address: "", description: "", location_id: 20)
		city.save
		city = City.new(latitude: 33, longitude: 33, title: "Timisoara", address: "", description: "", location_id: 21)
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

		comment = Comment.new(com_text: "very good", location_id: 1, user_id: 1)
		comment.save
		comment = Comment.new(com_text: "very good", location_id: 1, user_id: 1)
		comment.save
		comment = Comment.new(com_text: "very good2", location_id: 3, user_id: 1)
		comment.save
		comment = Comment.new(com_text: "very good3", location_id: 2, user_id: 1)
		comment.save
		comment = Comment.new(com_text: "very good3", location_id: 2, user_id: 1)
		comment.save
		comment = Comment.new(com_text: "very good4", location_id: 7, user_id: 1)
		comment.save
		comment = Comment.new(com_text: "very good5", location_id: 10, user_id: 1)
		comment.save
		comment = Comment.new(com_text: "very good6", location_id: 16, user_id: 1)
		comment.save
