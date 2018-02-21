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

ActiveRecord::Schema.define(version: 20180221101127) do

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "active"
    t.text "address1"
    t.text "address2"
    t.integer "zipcode"
    t.integer "phone_no"
    t.integer "mobile_no"
    t.string "email"
    t.integer "fax"
    t.integer "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_id"], name: "index_businesses_on_type_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.integer "phone_no"
    t.integer "mobile_no"
    t.string "email"
    t.integer "fax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "days", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hours", force: :cascade do |t|
    t.integer "day_id"
    t.boolean "active"
    t.time "time_start"
    t.time "time_end"
    t.integer "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_hours_on_business_id"
    t.index ["day_id"], name: "index_hours_on_day_id"
  end

  create_table "image_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "src"
    t.integer "business_id"
    t.integer "imageType_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "caption"
    t.string "photo_file_name"
    t.string "photo_content_type"
    t.integer "photo_file_size"
    t.datetime "photo_updated_at"
    t.index ["business_id"], name: "index_images_on_business_id"
    t.index ["imageType_id"], name: "index_images_on_imageType_id"
  end

  create_table "schedule_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "scheduleType_id"
    t.datetime "date"
    t.integer "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_schedules_on_business_id"
    t.index ["scheduleType_id"], name: "index_schedules_on_scheduleType_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "price"
    t.integer "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_services_on_business_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "working_hours", force: :cascade do |t|
    t.integer "days_id"
    t.boolean "active"
    t.time "time_start"
    t.time "time_end"
    t.integer "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_working_hours_on_business_id"
    t.index ["days_id"], name: "index_working_hours_on_days_id"
  end

end
