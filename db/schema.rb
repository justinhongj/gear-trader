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

ActiveRecord::Schema.define(version: 20150916214543) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "full_name"
    t.string   "department"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "condition"
    t.string   "wanted"
    t.string   "pictures"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "category_id"
  end

  add_index "posts", ["category_id"], name: "index_posts_on_category_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "trades", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.string   "description"
    t.string   "condition"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "trades", ["post_id"], name: "index_trades_on_post_id", using: :btree
  add_index "trades", ["user_id"], name: "index_trades_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.integer  "rating"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "watches", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "watches", ["post_id"], name: "index_watches_on_post_id", using: :btree
  add_index "watches", ["user_id"], name: "index_watches_on_user_id", using: :btree

  add_foreign_key "posts", "categories"
  add_foreign_key "posts", "users"
  add_foreign_key "trades", "posts"
  add_foreign_key "trades", "users"
  add_foreign_key "watches", "posts"
  add_foreign_key "watches", "users"
end
