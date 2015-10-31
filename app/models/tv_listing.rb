class TvListing < ActiveRecord::Base
has_many :users
belongs_to :tv_category
end
