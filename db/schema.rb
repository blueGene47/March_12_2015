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

ActiveRecord::Schema.define(version: 20150311175337) do

  create_table "appointments", force: :cascade do |t|
    t.integer  "appoint_id"
    t.string   "pet"
    t.date     "date_of_visit"
    t.string   "customer"
    t.string   "reason"
    t.boolean  "requires_reminder"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "school"
    t.integer  "years_in_practice"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "prescriptions", force: :cascade do |t|
    t.string   "pet_name"
    t.string   "type_of_pet"
    t.string   "breed"
    t.integer  "age"
    t.integer  "weight"
    t.date     "date_of_last_visit"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
