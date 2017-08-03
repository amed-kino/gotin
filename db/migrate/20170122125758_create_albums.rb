class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums, id: false do |t|
      t.string :uid, limit: 9
      t.string :title, limit: 64
      t.integer :year, limit: 4
      t.timestamps
    end
    add_index :albums, :uid, unique: true
  end
end
