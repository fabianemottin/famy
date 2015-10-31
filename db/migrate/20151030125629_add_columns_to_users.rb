class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :music_category_id, :integer
    add_column :users, :film_category_id, :integer
    add_column :users, :tv_category_id, :integer
    add_column :users, :language_id, :integer
  end
end
