class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists, id: false do |t|
      t.string :uid, limit: 9
      t.string :name
      t.timestamps
    end
    add_index :artists, :uid, unique: true
  end
end
