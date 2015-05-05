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

ActiveRecord::Schema.define(version: 20141222165837) do

  create_table "checkouts", force: true do |t|
    t.integer  "user_checkingout_id"
    t.integer  "user_contact_id"
    t.integer  "part_id"
    t.integer  "customer_id"
    t.string   "customer_contact_name"
    t.string   "customer_contact_phone"
    t.datetime "time_out"
    t.datetime "expected_time_in"
    t.datetime "actual_time_in"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "companyname"
    t.string   "address"
  end

  create_table "partdetails", force: true do |t|
    t.integer  "catalog_id"
    t.integer  "barcode"
    t.string   "series"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productlibraries", force: true do |t|
    t.string   "catalog_number"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",            null: false
    t.string   "crypted_password", null: false
    t.string   "salt",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstname"
    t.string   "lastname"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
