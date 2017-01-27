class CreateAlbumsArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :albums_artists do |t|
      t.references :album
      t.references :artist

      t.timestamps
    end
  end
end
