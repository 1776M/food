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

ActiveRecord::Schema.define(:version => 20110711195426) do

  create_table "carts", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_number"
  end

  add_index "carts", ["created_at"], :name => "index_carts_on_created_at"
  add_index "carts", ["user_id"], :name => "index_carts_on_user_id"

  create_table "orders", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_number"
  end

  add_index "orders", ["created_at"], :name => "index_orders_on_created_at"
  add_index "orders", ["user_id"], :name => "index_orders_on_user_id"

  create_table "places", :force => true do |t|
    t.string   "phone"
    t.string   "company"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "postcode"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "places", ["created_at"], :name => "index_places_on_created_at"
  add_index "places", ["user_id"], :name => "index_places_on_user_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.decimal  "price"
    t.string   "diet"
    t.string   "description"
    t.integer  "calories"
    t.integer  "fat"
    t.integer  "carbs"
    t.integer  "protein"
    t.integer  "satfat"
    t.integer  "sugar"
    t.integer  "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
