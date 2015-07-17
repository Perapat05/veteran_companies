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

ActiveRecord::Schema.define(version: 20150717191907) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affiliations", force: :cascade do |t|
    t.integer  "organization_id"
    t.integer  "company_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "affiliations", ["company_id"], name: "index_affiliations_on_company_id", using: :btree
  add_index "affiliations", ["organization_id"], name: "index_affiliations_on_organization_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "name",                                null: false
    t.string   "url"
    t.integer  "employees_count"
    t.integer  "total_funding"
    t.string   "stage"
    t.datetime "year_founded"
    t.string   "qualification"
    t.string   "status",          default: "pending"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "founders", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.integer  "founder_id", null: false
    t.integer  "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "positions", ["company_id"], name: "index_positions_on_company_id", using: :btree
  add_index "positions", ["founder_id"], name: "index_positions_on_founder_id", using: :btree

end
