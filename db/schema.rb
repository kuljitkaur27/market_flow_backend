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

ActiveRecord::Schema.define(version: 2020_04_13_092213) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "branches", force: :cascade do |t|
    t.text "branch_name", null: false
    t.text "location", null: false
    t.text "email"
    t.string "contact"
    t.integer "user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "event_date"
    t.text "description"
    t.string "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "item", null: false
    t.float "price"
    t.text "image"
  end

  create_table "requests", force: :cascade do |t|
    t.string "status", default: "OPEN"
    t.integer "branch_id", null: false
    t.integer "product_id", null: false
    t.integer "quantity", null: false
    t.float "price"
    t.datetime "created_at", null: false
    t.text "branch_name"
    t.string "item"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email", null: false
    t.string "password_digest", null: false
    t.boolean "admin", default: false
  end

end
