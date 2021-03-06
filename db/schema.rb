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

ActiveRecord::Schema.define(version: 20181218233352) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "documents", force: :cascade do |t|
    t.string   "title"
    t.text     "url"
    t.text     "img_preview"
    t.text     "description"
    t.integer  "category"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "docu_type"
  end

  create_table "lots", force: :cascade do |t|
    t.string   "lot_no"
    t.integer  "beds"
    t.integer  "baths"
    t.integer  "carpots"
    t.decimal  "in_sqm",      precision: 10, scale: 2
    t.decimal  "out_sqm",     precision: 10, scale: 2
    t.decimal  "total_sqm",   precision: 10, scale: 2
    t.string   "floor_level"
    t.text     "plan_url"
    t.text     "description"
    t.integer  "status"
    t.decimal  "price",       precision: 10, scale: 2
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "project_id"
    t.string   "room_type"
    t.string   "room_dir"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "projects_users", force: :cascade do |t|
    t.integer "project_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "is_admin"
    t.boolean  "is_sales_admin"
    t.string   "email"
  end

end
