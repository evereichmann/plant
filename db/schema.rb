# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_29_181820) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "containers", force: :cascade do |t|
    t.string "plant_name"
    t.integer "pot_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cutting_notes", force: :cascade do |t|
    t.string "title"
    t.date "note_date"
    t.text "text_field"
    t.string "cutting_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cuttings", force: :cascade do |t|
    t.string "name"
    t.integer "tag"
    t.date "cutting_date"
    t.integer "generation"
    t.string "condition"
    t.boolean "sold"
    t.decimal "price"
    t.integer "parent_id"
    t.string "parent_type"
    t.boolean "mother"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "container_id"
  end

  create_table "order_notes", force: :cascade do |t|
    t.text "information"
    t.integer "order_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "seller_name"
    t.string "country_origin"
    t.integer "units"
    t.decimal "total_price"
    t.date "date_order"
    t.date "date_shipped"
    t.boolean "multiple"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plant_notes", force: :cascade do |t|
    t.string "title"
    t.date "note_date"
    t.text "text_field"
    t.integer "plant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plants", force: :cascade do |t|
    t.integer "order_id"
    t.string "name"
    t.decimal "unit_price"
    t.date "arrival_date"
    t.string "condition"
    t.date "recovery_date"
    t.boolean "sold"
    t.decimal "price"
    t.integer "tag"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "container_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
