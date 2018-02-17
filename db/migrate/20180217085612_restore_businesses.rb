class RestoreBusinesses < ActiveRecord::Migration[5.1]
  def change
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
  end
end
