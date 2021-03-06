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

ActiveRecord::Schema.define(version: 20140525233830) do

  create_table "artist_groups", force: true do |t|
    t.string   "name"
    t.integer  "member_count"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "artist_groups", ["country_id"], name: "index_artist_groups_on_country_id", using: :btree

  create_table "artists", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.date     "join_date"
    t.date     "depart_date"
    t.integer  "artist_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "artists", ["artist_group_id"], name: "index_artists_on_artist_group_id", using: :btree

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "country_code"
    t.string   "continent"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
