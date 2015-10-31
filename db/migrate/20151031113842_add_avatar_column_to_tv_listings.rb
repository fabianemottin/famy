class AddAvatarColumnToTvListings < ActiveRecord::Migration

def up
    add_attachment :tv_listings, :avatar
  end

  def down
    remove_attachment :tv_listings, :avatar

  end
end
