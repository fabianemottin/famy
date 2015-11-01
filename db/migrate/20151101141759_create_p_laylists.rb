class CreatePLaylists < ActiveRecord::Migration
  def change
    create_table :p_laylists do |t|
      t.string :playlistname

      t.timestamps
    end
  end
end
