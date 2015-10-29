class CreateFilmCategories < ActiveRecord::Migration
  def change
    create_table :film_categories do |t|
      t.string :category

      t.timestamps
    end
  end
end
