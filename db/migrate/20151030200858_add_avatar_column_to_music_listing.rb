class AddAvatarColumnToMusicListing < ActiveRecord::Migration
   def up
    add_attachment :music_listings, :avatar
  end

  def down
    remove_attachment :music_listings, :avatar
  end
end
