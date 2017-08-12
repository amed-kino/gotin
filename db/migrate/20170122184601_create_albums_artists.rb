class CreateAlbumsArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :albums_artists do |t|
      t.string  :artist_id
      t.string :album_id
    end
  end
end
