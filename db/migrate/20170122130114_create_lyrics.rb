class CreateLyrics < ActiveRecord::Migration[5.0]
  def change
    create_table :lyrics do |t|
      t.string :title, limit: 64
      t.string :writer, limit: 64
      t.string :composer, limit: 64
      t.text :text
      t.text :source
      t.integer :views

      t.timestamps
    end
  end
end
