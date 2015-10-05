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

ActiveRecord::Schema.define(version: 20151005112213) do

  create_table "customers", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.text     "last_name",  limit: 65535
    t.text     "age",        limit: 65535
    t.text     "email",      limit: 65535
    t.integer  "phone",      limit: 4
    t.text     "user",       limit: 65535
    t.text     "password",   limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "districts", force: :cascade do |t|
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.text     "description",  limit: 65535
    t.integer  "customers_id", limit: 4
    t.integer  "districts_id", limit: 4
    t.text     "reference",    limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "favorites", ["customers_id"], name: "index_favorites_on_Users_id", using: :btree
  add_index "favorites", ["districts_id"], name: "index_favorites_on_districts_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.integer  "Customer_id",           limit: 4
    t.integer  "districts_id",          limit: 4
    t.text     "reference_origin",      limit: 65535
    t.text     "reference_destination", limit: 65535
    t.integer  "Users_id",              limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "services", ["Customer_id"], name: "index_services_on_Customer_id", using: :btree
  add_index "services", ["Users_id"], name: "index_services_on_Users_id", using: :btree
  add_index "services", ["districts_id"], name: "index_services_on_districts_id", using: :btree

  create_table "user_profiles", force: :cascade do |t|
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.text     "name",             limit: 65535
    t.text     "last_name",        limit: 65535
    t.text     "age",              limit: 65535
    t.text     "email",            limit: 65535
    t.integer  "phone",            limit: 4
    t.text     "user",             limit: 65535
    t.text     "password",         limit: 65535
    t.integer  "user_profiles_id", limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "users", ["user_profiles_id"], name: "index_users_on_user_profiles_id", using: :btree

  create_table "vehicles", force: :cascade do |t|
    t.text     "brand",      limit: 65535
    t.text     "year",       limit: 65535
    t.text     "color",      limit: 65535
    t.text     "passengers", limit: 65535
    t.integer  "Users_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "vehicles", ["Users_id"], name: "index_vehicles_on_Users_id", using: :btree

end
