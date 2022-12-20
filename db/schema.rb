ActiveRecord::Schema[7.0].define(version: 2022_12_20_111841) do
  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "username"
    t.text "email"
    t.text "password"
    t.text "password_confirmation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.integer "price"
    t.string "category"
    t.text "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "first_name"
    t.text "username"
    t.integer "phone_number"
    t.string "region"
    t.string "city"
    t.text "delivery_address"
    t.integer "restaurant_id"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "ordered_on"
  end

  create_table "restaurant_meals", force: :cascade do |t|
    t.integer "meal_id"
    t.integer "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
