class CreateMusicListings < ActiveRecord::Migration
  def change
    create_table :music_listings do |t|
      t.string :name
      t.string :videolink
      t.string :imagelink
      t.string :infolink
      t.integer :language_id
      t.integer :music_category_id

      t.timestamps
    end
  end
end
