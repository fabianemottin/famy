class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.integer :language_id
      t.integer :music_category_id
      t.integer :film_category_id
      t.integer :tv_category_id

      t.timestamps
    end
  end
end
