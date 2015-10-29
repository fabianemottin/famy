class CreateTvCategories < ActiveRecord::Migration
  def change
    create_table :tv_categories do |t|
      t.string :category

      t.timestamps
    end
  end
end
