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

ActiveRecord::Schema.define(version: 20171203210148) do

  create_table "addresses", force: :cascade do |t|
    t.string "street_name"
    t.integer "street_number"
    t.string "reference"
    t.string "zip_code"
    t.decimal "latitude", precision: 10, scale: 4
    t.decimal "longitude", precision: 10, scale: 4
    t.integer "city_id"
    t.integer "church_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["church_id"], name: "index_addresses_on_church_id"
    t.index ["city_id"], name: "index_addresses_on_city_id"
  end

  create_table "churches", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "international_name"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "full_name"
    t.integer "church_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["church_id"], name: "index_contacts_on_church_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "international_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emails", force: :cascade do |t|
    t.string "address"
    t.boolean "is_verified"
    t.integer "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_emails_on_contact_id"
  end

  create_table "phones", force: :cascade do |t|
    t.integer "country_code"
    t.integer "number"
    t.integer "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_phones_on_contact_id"
  end

end
