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

ActiveRecord::Schema.define(version: 20161210182103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "title",       null: false
    t.string   "description"
    t.datetime "starts_at"
    t.integer  "trip_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["trip_id"], name: "index_events_on_trip_id", using: :btree
  end

  create_table "expenses", force: :cascade do |t|
    t.string   "expense",    null: false
    t.decimal  "cost",       null: false
    t.integer  "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_expenses_on_trip_id", using: :btree
  end

  create_table "packingitems", force: :cascade do |t|
    t.string   "item",           null: false
    t.integer  "packinglist_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["packinglist_id"], name: "index_packingitems_on_packinglist_id", using: :btree
  end

  create_table "packinglists", force: :cascade do |t|
    t.string   "title",      null: false
    t.integer  "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_packinglists_on_trip_id", using: :btree
  end

  create_table "trips", force: :cascade do |t|
    t.string   "title",       null: false
    t.string   "description"
    t.string   "country",     null: false
    t.string   "state"
    t.string   "city"
    t.string   "address"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_trips_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.string   "email",           null: false
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "events", "trips"
  add_foreign_key "expenses", "trips"
  add_foreign_key "packingitems", "packinglists"
  add_foreign_key "packinglists", "trips"
  add_foreign_key "trips", "users"
end
