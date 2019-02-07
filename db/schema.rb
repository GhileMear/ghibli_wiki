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

ActiveRecord::Schema.define(version: 2019_02_07_211752) do

  create_table "character_types", force: :cascade do |t|
    t.string "name"
    t.string "classification"
    t.string "eye_colors"
    t.string "hair_colors"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "age"
    t.string "eye_color"
    t.string "hair_color"
    t.integer "film_id"
    t.integer "character_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_type_id"], name: "index_characters_on_character_type_id"
    t.index ["film_id"], name: "index_characters_on_film_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "director"
    t.string "producer"
    t.date "release_date"
    t.integer "rt_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "climate"
    t.string "terrain"
    t.integer "surface_water"
    t.integer "film_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["film_id"], name: "index_locations_on_film_id"
  end

  create_table "top_movies", force: :cascade do |t|
    t.string "title"
    t.integer "rank"
    t.string "mal_url"
    t.string "image_url"
    t.float "mal_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
