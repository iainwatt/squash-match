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

ActiveRecord::Schema.define(version: 20150420091320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "centres", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "location"
    t.string   "phone"
    t.string   "email"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "challenges", force: :cascade do |t|
    t.integer  "player1_id"
    t.integer  "player2_id"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "centre_id"
    t.integer  "court_id"
    t.string   "dist"
  end

  create_table "courts", force: :cascade do |t|
    t.integer  "centre_id"
    t.string   "time"
    t.string   "court_no"
    t.string   "availability"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "date_time"
    t.integer  "user_id"
    t.string   "dist"
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_image"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_name"
    t.string   "level"
    t.string   "avatar"
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "matches_played"
    t.integer  "wins"
    t.integer  "losses"
    t.string   "tagline"
    t.integer  "elo"
    t.string   "rank"
    t.string   "form"
    t.string   "sex"
    t.integer  "age"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
