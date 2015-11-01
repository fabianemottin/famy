class AddPLaylistIdToFilmListings < ActiveRecord::Migration
  def change
    add_column :film_listings, :p_laylist_id, :integer
  end
end
