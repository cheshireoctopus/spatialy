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

ActiveRecord::Schema.define(:version => 20130926205102) do

  create_table "architects", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "architects_buildings", :id => false, :force => true do |t|
    t.integer "architect_id"
    t.integer "building_id"
  end

  create_table "buildings", :force => true do |t|
    t.string   "name"
    t.string   "style"
    t.float    "height"
    t.integer  "floors"
    t.string   "street"
    t.float    "y_coord"
    t.float    "x_coord"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "city_id"
    t.string   "img"
  end

  create_table "buildings_users", :id => false, :force => true do |t|
    t.integer "building_id"
    t.integer "user_id"
  end

  add_index "buildings_users", ["building_id", "user_id"], :name => "index_buildings_users_on_building_id_and_user_id", :unique => true

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "country"
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.float    "y_coord"
    t.float    "x_coord"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "uid"
    t.string   "provider"
    t.string   "username"
    t.string   "oauth_token"
    t.string   "oauth_secret"
  end

end
