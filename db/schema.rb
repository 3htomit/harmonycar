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

ActiveRecord::Schema.define(version: 2022_03_03_141923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "alert_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "max_weeks", default: 0
  end

  create_table "alerts", force: :cascade do |t|
    t.bigint "car_id", null: false
    t.bigint "alert_category_id", null: false
    t.date "due_date"
    t.integer "due_km"
    t.boolean "completed"
    t.date "completed_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["alert_category_id"], name: "index_alerts_on_alert_category_id"
    t.index ["car_id"], name: "index_alerts_on_car_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "number_plate"
    t.integer "mileage"
    t.bigint "user_id", null: false
    t.bigint "specification_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["specification_id"], name: "index_cars_on_specification_id"
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string "name"
    t.bigint "car_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_documents_on_car_id"
  end

  create_table "garages", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "telephone"
    t.float "average_rating"
    t.integer "review_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "web_address"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.bigint "garage_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["garage_id"], name: "index_services_on_garage_id"
  end

  create_table "specifications", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.string "fuel"
    t.integer "critair"
    t.string "transmission"
    t.string "start_year"
    t.string "end_year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "cylinder"
    t.string "engine"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "alerts", "alert_categories"
  add_foreign_key "alerts", "cars"
  add_foreign_key "cars", "specifications"
  add_foreign_key "cars", "users"
  add_foreign_key "documents", "cars"
  add_foreign_key "services", "garages"
end
