class AddAvatarColumToFilmListing < ActiveRecord::Migration
def up
    add_attachment :film_listings, :avatar
  end

  def down
    remove_attachment :film_listings, :avatar

  end
end
