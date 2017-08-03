class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users, id: false do |t|
      t.string :uid, limit: 9
      t.string :username, limit: 255
      t.string :email, limit: 255
      t.string :password, limit: 255
      t.timestamps
    end
    add_index :users, :uid, unique: true
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end
