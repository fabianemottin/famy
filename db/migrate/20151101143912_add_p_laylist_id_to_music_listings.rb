class AddPLaylistIdToMusicListings < ActiveRecord::Migration
  def change
    add_column :music_listings, :p_laylist_id, :integer
  end
end
