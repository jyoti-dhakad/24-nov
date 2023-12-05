# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_11_28_042337) do
  create_table "bikes", force: :cascade do |t|
    t.string "name"
    t.string "model_no"
    t.string "price"
    t.string "color"
    t.string "lighting"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.string "booking_process"
    t.string "payment_option"
    t.string "security"
    t.string "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.integer "bike_id", null: false
    t.string "status"
    t.string "total_amount"
    t.string "date"
    t.index ["bike_id"], name: "index_bookings_on_bike_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "contact"
    t.string "dob"
    t.string "gender"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookings", "bikes"
  add_foreign_key "bookings", "users"
end
