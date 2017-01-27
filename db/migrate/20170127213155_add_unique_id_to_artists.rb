class AddUniqueIdToArtists < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :unique: true, :string
  end
end
