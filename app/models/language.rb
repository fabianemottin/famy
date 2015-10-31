class Language < ActiveRecord::Base
has_many :users
has_many :film_listings
has_many :music_listings
has_many :tv_listings

end
