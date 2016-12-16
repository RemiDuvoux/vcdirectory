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

ActiveRecord::Schema.define(version: 20161120225639) do

  create_table "founders", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone_number"
    t.integer  "startup_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "photo"
    t.string   "twitter"
    t.string   "facebook"
    t.index ["startup_id"], name: "index_founders_on_startup_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.date     "date"
    t.string   "ammount"
    t.integer  "vc_firm_id"
    t.integer  "startup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["startup_id"], name: "index_rounds_on_startup_id"
    t.index ["vc_firm_id"], name: "index_rounds_on_vc_firm_id"
  end

  create_table "stages", force: :cascade do |t|
    t.string   "seed_stage"
    t.string   "a_stage"
    t.string   "b_stage"
    t.string   "c_stage"
    t.string   "growth_stage"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "startups", force: :cascade do |t|
    t.string   "name"
    t.string   "alive"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "logo"
    t.string   "twitter"
    t.string   "facebook"
  end

  create_table "vc_firms", force: :cascade do |t|
    t.date     "creation_date"
    t.string   "vc_type"
    t.string   "city"
    t.string   "country"
    t.string   "office_address"
    t.text     "description"
    t.string   "funds_under_custody"
    t.string   "website"
    t.string   "sector"
    t.string   "name"
    t.integer  "stage_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "logo"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "seed_stage"
    t.string   "series_a"
    t.string   "series_b"
    t.string   "series_c"
    t.string   "growth_stage"
    t.string   "category"
    t.index ["stage_id"], name: "index_vc_firms_on_stage_id"
  end

end
