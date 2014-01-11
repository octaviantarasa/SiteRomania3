class Location < ActiveRecord::Base
	has_many :top_destinations
	has_many :cities
	has_many :castles
	has_many :regions
	has_many :event_addresses
	belongs_to :rate_location
	belongs_to :comment
	belongs_to :event
end
