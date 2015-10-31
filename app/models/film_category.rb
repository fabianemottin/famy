class FilmCategory < ActiveRecord::Base
	has_many :film_listings
end
