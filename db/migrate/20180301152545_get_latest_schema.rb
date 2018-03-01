class GetLatestSchema < ActiveRecord::Migration[5.1]
  def change

    create_table "types", force: :cascade do |t|
      t.string "name"
      t.text "description"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

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
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["type_id"], name: "index_businesses_on_type_id"
    end
  
    create_table "days", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "hours", force: :cascade do |t|
      t.boolean "active"
      t.time "time_start"
      t.time "time_end"
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
      t.datetime "date"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["business_id"], name: "index_schedules_on_business_id"
      t.index ["scheduleType_id"], name: "index_schedules_on_scheduleType_id"
    end
  
    create_table "services", force: :cascade do |t|
      t.string "name"
      t.text "description"
      t.float "price"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["business_id"], name: "index_services_on_business_id"
    end
  
    create_table "users", force: :cascade do |t|
      t.string "email", default: "", null: false
      t.string "encrypted_password", default: "", null: false
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.integer "sign_in_count", default: 0, null: false
      t.datetime "current_sign_in_at"
      t.datetime "last_sign_in_at"
      t.string "current_sign_in_ip"
      t.string "last_sign_in_ip"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.boolean "admin", default: false
      t.index ["email"], name: "index_users_on_email", unique: true
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    end
  
  end
end
