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

ActiveRecord::Schema.define(version: 20170802100305) do

  create_table "bnbrooms", force: :cascade do |t|
    t.string   "room_name"
    t.integer  "room_price"
    t.string   "room_type"
    t.text     "room_details"
    t.integer  "bedcount"
    t.integer  "bedroomcount"
    t.integer  "bathroomcount"
    t.string   "country"
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
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "photos"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
