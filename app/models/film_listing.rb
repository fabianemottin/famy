class FilmListing < ActiveRecord::Base
has_many :users
belongs_to :film_category
end
