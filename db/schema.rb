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

ActiveRecord::Schema.define(version: 20180913003749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "petowners", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "pet_name"
    t.text "pet_bio"
    t.integer "zipcode"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "petowner_id"
    t.integer "sitter_id"
    t.string "rating_by_sitter_value"
    t.string "rating_by_petowner_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sitters", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.integer "zipcode"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "swipes", force: :cascade do |t|
    t.integer "petowner_id"
    t.integer "sitter_id"
    t.string "swipe_by_sitter_value"
    t.string "swipe_by_petowner_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
