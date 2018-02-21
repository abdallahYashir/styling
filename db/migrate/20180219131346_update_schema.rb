class UpdateSchema < ActiveRecord::Migration[5.1]
  def change
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
end
