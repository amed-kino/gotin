class CreateAlbumArtistContributes < ActiveRecord::Migration[5.1]
  def change
    create_table :album_artist_contributes do |t|
      t.string :artist_id
      t.string :album_id

    end
  end
end
