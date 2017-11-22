# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170809061108) do

  create_table "ar_internal_metadata", primary_key: "key", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ar_internal_metadata", ["key"], name: "sqlite_autoindex_ar_internal_metadata_1", unique: true

  create_table "bnbrooms", force: :cascade do |t|
    t.string   "room_name"
    t.integer  "room_price"
    t.string   "room_type"
    t.text     "room_details"
    t.integer  "bedcount"
    t.integer  "bedroomcount"
    t.integer  "bathroomcount"
    t.string   "neighborhood"
    t.boolean  "selfcheckin"
    t.boolean  "tvavail"
    t.boolean  "wifiavail"
    t.boolean  "acavail"
    t.boolean  "essentialsavail"
    t.boolean  "parkingavail"
    t.boolean  "kitchenvail"
    t.boolean  "heatingavail"
    t.boolean  "deskavail"
    t.boolean  "famfriendly"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "photos"
    t.integer  "user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "booking_id"
    t.integer  "user_id"
    t.integer  "bnbroom_id"
    t.date     "startdate"
    t.date     "enddate"
    t.integer  "nightprice"
    t.integer  "totalprice"
    t.boolean  "paymentstatus"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "bookings", ["bnbroom_id"], name: "index_bookings_on_bnbroom_id"
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id"

  create_table "reviewcommentrates", force: :cascade do |t|
    t.string   "reviewtitle"
    t.text     "comment"
    t.integer  "rating"
    t.integer  "bnbroom_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "avatar"
    t.string   "full_name"
    t.string   "nickname"
    t.string   "contact"
    t.text     "bio"
    t.string   "location"
    t.string   "schoolwork"
    t.integer  "user_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
