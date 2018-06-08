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

ActiveRecord::Schema.define(version: 20180426214033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foodcomments", force: :cascade do |t|
    t.string   "content"
    t.integer  "food_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "foodcomments", ["food_id"], name: "index_foodcomments_on_food_id", using: :btree
  add_index "foodcomments", ["user_id"], name: "index_foodcomments_on_user_id", using: :btree

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "link"
    t.string   "type"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "petcomments", force: :cascade do |t|
    t.string   "content"
    t.integer  "pet_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "petcomments", ["pet_id"], name: "index_petcomments_on_pet_id", using: :btree
  add_index "petcomments", ["user_id"], name: "index_petcomments_on_user_id", using: :btree

  create_table "petposts", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "pet_id"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "petposts", ["pet_id"], name: "index_petposts_on_pet_id", using: :btree
  add_index "petposts", ["user_id"], name: "index_petposts_on_user_id", using: :btree

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.string   "species"
    t.string   "breed"
    t.string   "gender"
    t.date     "birthdate"
    t.string   "description"
    t.integer  "food_id"
    t.integer  "toy_id"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "pets", ["food_id"], name: "index_pets_on_food_id", using: :btree
  add_index "pets", ["toy_id"], name: "index_pets_on_toy_id", using: :btree
  add_index "pets", ["user_id"], name: "index_pets_on_user_id", using: :btree

  create_table "toycomments", force: :cascade do |t|
    t.string   "content"
    t.integer  "toy_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "toycomments", ["toy_id"], name: "index_toycomments_on_toy_id", using: :btree
  add_index "toycomments", ["user_id"], name: "index_toycomments_on_user_id", using: :btree

  create_table "toys", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.string   "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "foodcomments", "foods"
  add_foreign_key "foodcomments", "users"
  add_foreign_key "petcomments", "pets"
  add_foreign_key "petcomments", "users"
  add_foreign_key "petposts", "pets"
  add_foreign_key "petposts", "users"
  add_foreign_key "pets", "foods"
  add_foreign_key "pets", "toys"
  add_foreign_key "pets", "users"
  add_foreign_key "toycomments", "toys"
  add_foreign_key "toycomments", "users"
end
