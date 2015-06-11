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

ActiveRecord::Schema.define(version: 20150608011753) do

  create_table "comparisons", force: :cascade do |t|
    t.string   "user_id"
    t.string   "plan_id"
    t.string   "plan_type_id"
    t.string   "plan_number_id"
    t.string   "metal_level_id"
    t.string   "insurer_id"
    t.string   "state_id"
    t.string   "year_id"
    t.string   "county_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "counties", force: :cascade do |t|
    t.string   "county"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "insurers", force: :cascade do |t|
    t.string   "insurer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metal_levels", force: :cascade do |t|
    t.string   "metal_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plan_numbers", force: :cascade do |t|
    t.string   "plan_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plan_types", force: :cascade do |t|
    t.string   "plan_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plans", force: :cascade do |t|
    t.float    "ind_40_prem"
    t.float    "ind_27_prem"
    t.string   "insurer_id"
    t.string   "county_id"
    t.string   "plan_number_id"
    t.string   "plan_name"
    t.string   "state_id"
    t.string   "plan_type_id"
    t.string   "year_id"
    t.string   "metal_level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: :cascade do |t|
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "years", force: :cascade do |t|
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
