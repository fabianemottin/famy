class PLaylist < ActiveRecord::Base
	has_many :music_listings
	has_many :tv_listings
	has_many :film_listings
end
