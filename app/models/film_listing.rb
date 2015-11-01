class FilmListing < ActiveRecord::Base
has_many :users
belongs_to :film_category
belongs_to :language
belongs_to :p_laylist

has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  
  
end
