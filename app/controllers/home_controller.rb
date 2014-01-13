class HomeController < ApplicationController

	def home_page
			events = Event.all.order("date ASC")
			@monday = {} 
			@monday.compare_by_identity
			@tuesday = {}
			@tuesday.compare_by_identity
			@wednesday = {}
			@wednesday.compare_by_identity
			@thursday = {}
			@thursday.compare_by_identity
			@friday = {}
			@friday.compare_by_identity
			@saturday = {}
			@saturday.compare_by_identity
			@sunday = {}
			@sunday.compare_by_identity
			events.each do |e|
				day_name = e.date.strftime('%A')
				case day_name
				when "Monday"
					@monday["name"] = e.name
					@monday["description"] = e.description
					@monday["date"] = e.date
				when "Tuesday"
					@tuesday["name"] = e.name
					@tuesday["description"] = e.description
					@tuesday["date"] = e.date
				when "Wednesday"
					@wednesday["name"] = e.name
					@wednesday["description"] = e.description
					@wednesday["date"] = e.date
				when "Thursday"
					@thursday["name"] = e.name
					@thursday["description"] = e.description
					@thursday["date"] = e.date
				when "Friday"
					@friday["name"] = e.name
					@friday["description"] = e.description
					@friday["date"] = e.date
				when "Saturday"
					@saturday["name"] = e.name
					@saturday["description"] = e.description
					@saturday["date"] = e.date
				else
					@sunday["name"] = e.name
					@sunday["description"] = e.description
					@sunday["date"] = e.date
 				end

			end
	end
end
