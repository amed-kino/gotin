# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170122184601) do

  create_table "albums", id: false, force: :cascade do |t|
    t.string "uid", limit: 9
    t.string "title", limit: 64
    t.integer "year", limit: 4
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["uid"], name: "index_albums_on_uid", unique: true
  end

  create_table "albums_artists", force: :cascade do |t|
    t.string "artist_id"
    t.string "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", id: false, force: :cascade do |t|
    t.string "uid", limit: 9
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["uid"], name: "index_artists_on_uid", unique: true
  end

  create_table "lyrics", id: false, force: :cascade do |t|
    t.string "uid", limit: 9
    t.string "title", limit: 64
    t.string "writer", limit: 64
    t.string "composer", limit: 64
    t.text "text"
    t.text "source"
    t.integer "views"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["uid"], name: "index_lyrics_on_uid", unique: true
  end

  create_table "users", id: false, force: :cascade do |t|
    t.string "uid", limit: 9
    t.string "username", limit: 255
    t.string "email", limit: 255
    t.string "password", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["uid"], name: "index_users_on_uid", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
