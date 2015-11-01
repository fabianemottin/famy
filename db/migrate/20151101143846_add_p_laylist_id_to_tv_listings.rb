class AddPLaylistIdToTvListings < ActiveRecord::Migration
  def change
    add_column :tv_listings, :p_laylist_id, :integer
  end
end
