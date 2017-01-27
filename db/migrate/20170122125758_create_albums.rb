class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :title, limit: 64
      t.integer :year, limit: 4

      t.timestamps
    end
  end
end
