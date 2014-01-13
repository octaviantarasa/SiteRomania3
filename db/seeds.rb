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
		castle = Castle.new(id: 11,latitude: 46.255552 , longitude: 24.173419, title: "Cetatea de Balta", address: "DJ107 Cetatea de Baltă", description: "", location_id: 11)
		castle.save
		castle = Castle.new(id: 12,latitude: 45.845144, longitude: 24.974542, title: "Cetatea Fagaras", address: "Piata Mihai Viteazul nr.1, localitatea Fagaras, Brasov", description: "", location_id: 12)
		castle.save
		castle = Castle.new(id: 13,latitude: 45.721750, longitude: 25.773904, title: "Cetatea Prejmer", address: "Strada Mare
Prejmer 507165", description: "", location_id: 13)
		castle.save
		castle = Castle.new(id: 14,latitude: 45.590630, longitude: 25.469152, title: "Cetatea Rasnov", address: "Rasnov, Judetul Brasov, Strada Principala nr. 1", description: "", location_id: 14)
		castle.save


		city = City.new(id: 15,latitude: 45.652582, longitude: 25.610504, title: "Brasov", address: "", description: "", location_id: 15)
		city.save
		city = City.new(id: 16,latitude: 44.426801, longitude: 26.102475, title: "Bucuresti", address: "", description: "", location_id: 16)
		city.save
		city = City.new(id: 17,latitude: 46.771004, longitude: 23.593483, title: "Cluj", address: "", description: "", location_id: 17)
		city.save
		city = City.new(id: 18,latitude: 44.180395, longitude: 28.636122, title: "Constanta", address: "", description: "", location_id: 18)
		city.save
		city = City.new(id: 19,latitude: 47.152931, longitude: 27.588644, title: "Iasi", address: "", description: "", location_id: 19)
		city.save
		city = City.new(id: 20,latitude: 45.755973, longitude: 21.228848, title: "Timisoara", address: "", description: "", location_id: 20)
		city.save	

		event = Event.new(id: 21, name: "Noaptea Alba a Muzeelor", description: "Muzeele bucurestene isi asteapta vizitatorii la expozitii, spectacole de muzica, dans, teatru si film, proiectii si evenimente speciale interactive. ", date: ("2014-05-17").to_date)
		event.save
		event = Event.new(id:22, name: "EUROPAfest 2014 ", description: "Cel mai prestigios concurs international de muzica clasica derulat in Romania se pregateste pentru editia cu nr. 21", date: ("2014-05-17").to_date)
		event.save
		event = Event.new(id:23, name: "Zilele Clujului", description: "Zilele Clujului reprezintă cea mai bună ocazie pentru locuitori şi turişti deopotrivă de a descoperi frumuseţile ascunse ale oraşului, de a-i găsi comorile şi de a-i savura ineditul. ", date: ("2014-05-24").to_date)
		event.save
		event = Event.new(id:24, name: "Raliului Deltei Dunarii", description: "Raliul Deltei Dunării 2014 se va desfăşura la sfârşitul lunii mai la Tulcea şi este etapa a IV-a din Campionatul Naţional de Raliuri", date: ("2014-05-30").to_date)
		event.save
		event = Event.new(id:25, name: "Festivalului Internațional de Film Transilvania", description: "În cei doisprezece ani de existenţă, TIFF a devenit un brand recunoscut în România nu numai pentru calitatea programelor prezentate, ci şi pentru organizarea excelentă, atmosfera efervescentă şi multitudinea de evenimente.", date: ("2014-05-30").to_date)
		event.save
		event = Event.new(id:26, name: "Jazz in the park", description: "Jazz in the park revine anul acesta cu și mai multe concerte, voie bună și multe alte activități", date: ("2014-06-13").to_date)
		event.save
		event = Event.new(id:27, name: "Jocul Satului", description: "Un vechi obicei care a strâns laolaltă fete şi feciori din zonele aparţinând comunei Ocna Şugatag, cu toţii gătiţi de sărbătoare şi puşi pe joc.", date: ("2014-06-24").to_date)
		event.save
		event = Event.new(id:28, name: "Festivalul B'ESTFEST", description: "B’ESTFEST este primul festival international din Romania recunoscut in industria muzicala drept unul dintre cele mai mari evenimente de acest gen din Europa Centrala si de Est.", date: ("2014-07-31").to_date)
		event.save
		event = Event.new(id:29, name: "Targul de Fete de pe Muntele Gaina", description: "La acest targ participă fetele de măritat sau fetele mari care vor sa fie pețite de feciori.", date: ("2014-07-20").to_date)
		event.save
		event = Event.new(id:30, name: "Festivalul Academia Sighisoara", description: "Academia Sighișoara este un festival international pentru tineri musicieni si artisti din toata lumea. ", date: ("2014-08-01").to_date)
		event.save
    event = Event.new(id:31, name: "Festivalul ARTmania", description: "Festivalul ARTmania este mai mult decât un festival de muzică, este un eveniment multicultural ce reuşeşte să adune în fiecare an iubitori de artă, muzică, fotografie sau pictură.", date: ("2014-08-04").to_date)
		event.save
		event = Event.new(id:32, name: "Hora la Prislop", description: "Hora de la Prislop este un festival interjudeţean, ce promovează tradiţiile, obiceiurile, portul şi cântecul popular.", date: ("2014-08-18").to_date)
		event.save
		event = Event.new(id:33, name: "Festivalul Callatis", description: "Festivalul Callatis este unul dintre cele mai mari festivaluri de muzică și cultură din România.", date: ("2014-08-22").to_date)
		event.save
		event = Event.new(id:34, name: "OktoberFest", description: "Eveniment cu marcă înregistrată, festivalul Oktoberfest a adus la București adevărata tradiție bavareză și a reunit sub acoperișul celui mai mare cort din Romania toți pasionații de bere bună.", date: ("2014-10-03").to_date)
		event.save
		event = Event.new(id:35, name: 'Festivalul Internaţional „Rodul Pământului - Zilele Recoltei la Cumpăna“', description: "Cantec, dans si voie buna, produse bio si specialitati culinare romanesti si internationale dintre cele mai variate.", date: ("2014-09-21").to_date)
		event.save
		event = Event.new(id:36, name: "Festivalul International al Viei si Vinului", description: " Festivalul va pune un accent deosebit pe promovarea vinurilor de renume din judetul Vrancea, dar si pe maiestria mesterilor populari si a traditiilor populare.", date: ("2014-09-25").to_date)
		event.save
		event = Event.new(id:37, name: "Ziua Nationala a Romaniei", description: "Parada militară din Capitală, dedicată Zilei Naţionale a României, începe în prezenţa a mii de români, cu salutul Drapelului de Luptă şi trecerea în revistă a Gărzii de Onoare.", date: ("2014-12-01").to_date)
		event.save
		event = Event.new(id:38, name: "Craciun, Colinde si Merinde din Satul Romanesc", description: "Colindele sunt cele mai importante obiceiuri care se practica si azi incepand din ajunul Craciunului, si pana in ziua de Anul Nou. ", date: ("2014-12-24").to_date)
		event.save
		# event = Event.new(id:39 name: "", description: "", date: ("2014--").to_date)
		# event.save
		# event = Event.new(id:40 name: "", description: "", date: ("2014--").to_date)
		# event.save
		# event = Event.new(id:41 name: "", description: "", date: ("2014--").to_date)
		# event.save
		# event = Event.new(id:42 name: "", description: "", date: ("2014--").to_date)
		# event.save
		# event = Event.new(id:43 name: "", description: "", date: ("2014--").to_date)
		# event.save
		# event = Event.new(id:44 name: "", description: "", date: ("2014--").to_date)
		# event.save
		# event = Event.new(id:45 name: "", description: "", date: ("2014--").to_date)
		# event.save

		event_loc = EventAddress.new(id: 21, city: "Bucuresti", address: "", latitude: 44.426801, longitude: 26.102475 , location_id: 21)
		event_loc.save
		event_loc = EventAddress.new(id: 22,  city: "Bucuresti", address: "", latitude: 44.426801, longitude: 26.102475 , location_id: 22)
		event_loc.save
		event_loc = EventAddress.new(id: 23, city: "Cluj", address: "", latitude: 46.771004, longitude: 23.593483 , location_id: 23)
		event_loc.save
		event_loc = EventAddress.new(id: 24, city: "Tulcea", address: "", latitude: 45.178747, longitude: 28.804307, location_id: 24)
		event_loc.save
		event_loc = EventAddress.new(id: 25, city: "Cluj", address: "", latitude: 46.771004, longitude: 23.593483 , location_id: 25)
		event_loc.save
		event_loc = EventAddress.new(id: 26, city: "Cluj", address: "Parcul Central Simion Bărnuțiu", latitude: 46.769369, longitude: 23.577604 , location_id: 26)
		event_loc.save
		event_loc = EventAddress.new(id: 27, city: "Ocna Șugatag", address: "", latitude: 47.780893, longitude: 23.938179, location_id: 27)
		event_loc.save
		event_loc = EventAddress.new(id: 28, city: "Bucuresti", address: "Str. Valea Parcului nr. 1 Loc. Mogosoaia" , latitude: 44.52765, longitude: 25.992482, location_id: 28)
		event_loc.save
		event_loc = EventAddress.new(id: 29, city: "", address: "", latitude: 46.353007, longitude: 22.761955, location_id: 29)
		event_loc.save
		event_loc = EventAddress.new(id: 30, city: "Sighisoara", address: "", latitude: 46.220657, longitude: 24.798288, location_id: 30)
		event_loc.save
		event_loc = EventAddress.new(id: 31, city: "Sibiu", address: "Piata Mare si Piata Mica", latitude: 45.790763, longitude: 24.147520, location_id: 31)
		event_loc.save
		event_loc = EventAddress.new(id: 32, city: "Borsa", address: "", latitude: 47.655053, longitude: 24.662590, location_id: 32)
		event_loc.save
		event_loc = EventAddress.new(id: 33, city: "Mangalia", address: "Portul Mangalia", latitude: 43.801532, longitude: 28.585396, location_id: 33)
		event_loc.save
		event_loc = EventAddress.new(id: 34, city:  "Bucuresti", address: "", latitude: 44.426801, longitude: 26.102475 , location_id: 34)
		event_loc.save
		event_loc = EventAddress.new(id: 35, city: "Cumpana", address: "", latitude: 44.112624 , longitude: 28.554840, location_id: 35)
		event_loc.save
		event_loc = EventAddress.new(id: 36, city: "Focsani", address: "Piata Unirii", latitude: 45.699423, longitude: 27.182343, location_id: 36)
		event_loc.save
		event_loc = EventAddress.new(id: 37, city: "Bucuresti", address: "Arcul de Triumf", latitude: 44.467219, longitude: 26.078185, location_id: 37)
		event_loc.save
		event_loc = EventAddress.new(id: 38, city: "Carlibaba", address: "", latitude: 47.571332, longitude: 25.127192, location_id: 38)
		event_loc.save
		# event_loc = EventAddress.new(id: 39, city: "", address: , latitude: , longitude: , location_id: 39)
		# event_loc.save
		# event_loc = EventAddress.new(id: 40, city: , address: , latitude: , longitude: , location_id: 40)
		# event_loc.save
		# event_loc = EventAddress.new(id: 41, city: , address: , latitude: , longitude: , location_id: 41)
		# event_loc.save
		# event_loc = EventAddress.new(id: 42, city: , address: , latitude: , longitude: , location_id: 42)
		# event_loc.save
		# event_loc = EventAddress.new(id: 43, city: , address: , latitude: , longitude: , location_id: )
		# event_loc.save
		# event_loc = EventAddress.new(id: 44, city: , address: , latitude: , longitude: , location_id: )
		# event_loc.save
		# event_loc = EventAddress.new(id: 45, city: , address: , latitude: , longitude: , location_id: )
		# event_loc.save



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

	