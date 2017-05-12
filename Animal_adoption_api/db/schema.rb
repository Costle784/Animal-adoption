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

ActiveRecord::Schema.define(version: 20170512124137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string  "animal_type"
    t.string  "name"
    t.string  "gender"
    t.integer "age"
    t.boolean "is_adopted"
    t.string  "preferences"
    t.integer "days_left"
    t.string  "photo_url"
    t.integer "location_id"
    t.index ["location_id"], name: "index_animals_on_location_id", using: :btree
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "photo_url"
    t.string "phone_number"
  end

  add_foreign_key "animals", "locations"
end
