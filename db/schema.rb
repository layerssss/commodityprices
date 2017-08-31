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

ActiveRecord::Schema.define(version: 20170831021238) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commodities", force: :cascade do |t|
    t.string "yahoo_symbol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer "commodity_id"
    t.string "last_price"
    t.datetime "fetch_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commodity_id"], name: "index_prices_on_commodity_id"
    t.index ["fetch_time"], name: "index_prices_on_fetch_time"
  end

  create_table "site_configurations", force: :cascade do |t|
    t.integer "capture_interval_seconds", default: 600
    t.boolean "capturing", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
