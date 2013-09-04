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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20130826134418) do
=======
ActiveRecord::Schema.define(version: 20130903042742) do
>>>>>>> 295f51e394104a5d7b18820ce9464829428673e4

  create_table "events", force: true do |t|
    t.integer  "user_id",                 null: false
    t.string   "title",                   null: false
    t.text     "description"
    t.date     "s_date"
    t.time     "s_time"
    t.date     "e_date"
    t.time     "e_time"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "visibility",  default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
  end

<<<<<<< HEAD
  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
=======
  create_table "people_actions", force: true do |t|
    t.integer  "u_id",                   null: false
    t.integer  "e_id",                   null: false
    t.integer  "action",     default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> 295f51e394104a5d7b18820ce9464829428673e4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
