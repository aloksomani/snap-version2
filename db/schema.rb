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

ActiveRecord::Schema.define(version: 20150515014946) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cameras", force: :cascade do |t|
    t.string   "brand"
    t.string   "model"
    t.float    "price"
    t.string   "resolution"
    t.string   "zoom_range"
    t.string   "product_photo"
    t.text     "description"
    t.integer  "portability"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "cameras_profiles", id: false, force: :cascade do |t|
    t.integer "profile_id", null: false
    t.integer "camera_id",  null: false
  end

  add_index "cameras_profiles", ["camera_id", "profile_id"], name: "index_cameras_profiles_on_camera_id_and_profile_id", using: :btree
  add_index "cameras_profiles", ["profile_id", "camera_id"], name: "index_cameras_profiles_on_profile_id_and_camera_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "style"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "camera_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "reviews", ["camera_id"], name: "index_reviews_on_camera_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "samples", force: :cascade do |t|
    t.string   "photo"
    t.integer  "user_id"
    t.integer  "camera_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "samples", ["camera_id"], name: "index_samples_on_camera_id", using: :btree
  add_index "samples", ["user_id"], name: "index_samples_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "token"
  end

  add_foreign_key "reviews", "cameras"
  add_foreign_key "reviews", "users"
  add_foreign_key "samples", "cameras"
  add_foreign_key "samples", "users"
end
