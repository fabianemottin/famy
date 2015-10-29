class CreateTvListings < ActiveRecord::Migration
  def change
    create_table :tv_listings do |t|
      t.string :name
      t.string :videolink
      t.string :imagelink
      t.string :infolink
      t.integer :language_id
      t.integer :tv_category_id

      t.timestamps
    end
  end
end
