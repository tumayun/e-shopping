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

ActiveRecord::Schema.define(version: 20130630044059) do

  create_table "categories", force: true do |t|
    t.string   "name",             default: "", null: false
    t.integer  "products_count",   default: 0,  null: false
    t.integer  "properties_count", default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["name"], name: "index_categories_on_name", using: :btree

  create_table "products", force: true do |t|
    t.string   "name",                                    default: "",  null: false
    t.decimal  "price",          precision: 10, scale: 2, default: 0.0, null: false
    t.integer  "publish_status",                          default: 0,   null: false
    t.integer  "category_id",                             default: 0,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["category_id", "name"], name: "index_products_on_category_id_and_name", unique: true, using: :btree
  add_index "products", ["name"], name: "index_products_on_name", using: :btree

  create_table "products_properties", force: true do |t|
    t.integer  "product_id",  default: 0,  null: false
    t.integer  "property_id", default: 0,  null: false
    t.string   "name",        default: "", null: false
    t.string   "value",       default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products_properties", ["product_id"], name: "index_products_properties_on_product_id", using: :btree

  create_table "properties", force: true do |t|
    t.string   "name",        default: "", null: false
    t.integer  "category_id", default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "properties", ["category_id", "name"], name: "index_properties_on_category_id_and_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "name",                   default: "",    null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.boolean  "is_admin",               default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["name"], name: "index_users_on_name", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
