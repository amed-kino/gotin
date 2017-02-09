class CreateLyrics < ActiveRecord::Migration[5.0]
  def change
    create_table :lyrics, id: false do |t|
      t.string :uid, limit: 9
      t.string :title, limit: 64
      t.string :writer, limit: 64
      t.string :composer, limit: 64
      t.text :text
      t.text :source
      t.integer :views
      t.timestamps
    end
    add_index :lyrics, :uid, unique: true
  end
end
