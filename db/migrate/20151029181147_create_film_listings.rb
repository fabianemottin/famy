class CreateFilmListings < ActiveRecord::Migration
  def change
    create_table :film_listings do |t|
      t.string :name
      t.string :videolink
      t.string :imagelink
      t.string :infolink
      t.integer :language_id
      t.integer :film_category_id

      t.timestamps
    end
  end
end
