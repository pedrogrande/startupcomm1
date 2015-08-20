class Location < ActiveRecord::Base
  belongs_to :startup

  geocoded_by :full_street_address
	after_validation :geocode

	def full_street_address
		[street, suburb, state, postcode, country].compact.join(', ')
	end
end
