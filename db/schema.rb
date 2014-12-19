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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20141218211232) do

  create_table "checkouts", :force => true do |t|
    t.integer  "user_checkingout_id"
    t.integer  "user_contact_id"
    t.integer  "part_id"
    t.integer  "customer_id"
    t.string   "customer_contact_name"
    t.string   "customer_contact_phone"
    t.datetime "time_out"
    t.datetime "expected_time_in"
    t.datetime "actual_time_in"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "customers", :force => true do |t|
    t.integer  "companyname"
    t.integer  "address"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "partdetails", :force => true do |t|
    t.string   "catalog_id", :limit => nil
    t.string   "barcode",    :limit => nil
    t.string   "series",     :limit => nil
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "partdetails", ["id"], :name => "sqlite_autoindex_partdetails_1", :unique => true

  create_table "productlibraries", :force => true do |t|
    t.string   "catalog_number", :limit => nil
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "productlibraries", ["id"], :name => "sqlite_autoindex_productlibraries_1", :unique => true

  create_table "users", :force => true do |t|
    t.string   "email",            :limit => nil
    t.string   "crypted_password", :limit => nil
    t.string   "salt",             :limit => nil
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstname",        :limit => nil
    t.string   "lastname",         :limit => nil
  end

  add_index "users", ["id"], :name => "sqlite_autoindex_users_1", :unique => true

end
