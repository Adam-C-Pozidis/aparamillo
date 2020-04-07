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

ActiveRecord::Schema.define(version: 2020_04_06_114055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cloths", force: :cascade do |t|
    t.bigint "type_id", null: false
    t.bigint "color_id", null: false
    t.bigint "user_id", null: false
    t.bigint "shelf_id", null: false
    t.string "category", default: ["Ανδρικό", "Γυναικείο", "Παιδικό"], array: true
    t.string "wash_type", default: ["Στεγνό καθάρισμα", "Υγρό καθάρισμα", "Σιδέρωμα"], array: true
    t.boolean "delivery", default: false
    t.float "price"
    t.boolean "completed", default: false
    t.date "pick_up_date"
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["color_id"], name: "index_cloths_on_color_id"
    t.index ["shelf_id"], name: "index_cloths_on_shelf_id"
    t.index ["type_id"], name: "index_cloths_on_type_id"
    t.index ["user_id"], name: "index_cloths_on_user_id"
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shelves", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  add_foreign_key "cloths", "colors"
  add_foreign_key "cloths", "shelves"
  add_foreign_key "cloths", "types"
  add_foreign_key "cloths", "users"
end
