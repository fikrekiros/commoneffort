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

ActiveRecord::Schema.define(version: 20140524224318) do

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

end
