class CreateAlbumsArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :albums_artists, artist_id: false , albums_id: false do |t|
      t.string :uid, limit: 9
      t.string :artist_uid, limit: 9
      t.string :album_uid, limit: 9
      t.references :album
      t.references :artist

      t.timestamps
    end
    add_index :albums_artists, :uid, unique: true
  end
end
