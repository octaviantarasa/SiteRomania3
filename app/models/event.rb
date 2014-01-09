class Event < ActiveRecord::Base
	belongs_to :rate_event
	has_one :location
end
