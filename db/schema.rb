# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_28_131544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.date "time"
    t.string "status"
    t.integer "city_id"
    t.integer "neighborhood_id"
    t.bigint "client_id", null: false
    t.bigint "stylist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_appointments_on_client_id"
    t.index ["stylist_id"], name: "index_appointments_on_stylist_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.bigint "stylist_id", null: false
    t.bigint "neighborhood_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["neighborhood_id"], name: "index_cities_on_neighborhood_id"
    t.index ["stylist_id"], name: "index_cities_on_stylist_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string "name"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.bigint "stylist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stylist_id"], name: "index_posts_on_stylist_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "description"
    t.bigint "client_id", null: false
    t.bigint "stylist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_reviews_on_client_id"
    t.index ["stylist_id"], name: "index_reviews_on_stylist_id"
  end

  create_table "stylists", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.integer "years_of_practice"
    t.string "licenses"
    t.integer "city_id"
    t.integer "neighborhood_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "clients"
  add_foreign_key "appointments", "stylists"
  add_foreign_key "cities", "neighborhoods"
  add_foreign_key "cities", "stylists"
  add_foreign_key "posts", "stylists"
  add_foreign_key "reviews", "clients"
  add_foreign_key "reviews", "stylists"
end
