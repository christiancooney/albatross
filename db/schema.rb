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

ActiveRecord::Schema[7.0].define(version: 2023_07_06_164717) do
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
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.text "title"
    t.text "country"
    t.text "city"
    t.float "latitude"
    t.float "longitude"
    t.text "author"
    t.date "date"
    t.text "text1"
    t.text "text2"
    t.text "text3"
    t.text "text4"
    t.text "text5"
    t.text "text6"
    t.text "text7"
    t.text "text8"
    t.text "text9"
    t.text "text10"
    t.text "text11"
    t.text "text12"
    t.text "text13"
    t.text "text14"
    t.text "text15"
    t.text "text16"
    t.text "text17"
    t.text "text18"
    t.text "text19"
    t.text "text20"
    t.text "text21"
    t.text "text22"
    t.text "text23"
    t.text "text24"
    t.text "text25"
    t.text "text26"
    t.text "text27"
    t.text "text28"
    t.text "text29"
    t.text "text30"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "location_id", default: 0
    t.bigint "country_id"
    t.text "category"
    t.text "subcategory"
    t.text "feature"
    t.text "subfeature"
    t.text "cuisine"
    t.text "recipe_title1"
    t.text "recipe_title2"
    t.text "recipe_title3"
    t.text "recipe_title4"
    t.text "recipe_title5"
    t.text "recipe_title6"
    t.text "recipe_list1"
    t.text "recipe_list2"
    t.text "recipe_list3"
    t.text "recipe_list4"
    t.text "recipe_list5"
    t.text "recipe_list6"
    t.text "method1"
    t.text "method2"
    t.text "method3"
    t.text "method4"
    t.text "method5"
    t.text "method6"
    t.text "method7"
    t.text "method8"
    t.text "method9"
    t.text "method10"
    t.float "price"
    t.float "atmosphere"
    t.float "drinks"
    t.float "food"
    t.float "service"
    t.float "value"
    t.text "recipe_tags"
    t.text "travel_tags"
    t.boolean "vegan"
    t.boolean "vegetarian"
    t.boolean "gluten_free"
    t.boolean "dairy_free"
    t.boolean "nut_free"
    t.boolean "seafood"
    t.boolean "alcohol"
    t.boolean "alcohol_free"
    t.boolean "city_break"
    t.boolean "active_holiday"
    t.boolean "beach_holiday"
    t.boolean "adventure_holiday"
    t.boolean "multi_destination_holiday"
    t.index ["country_id"], name: "index_articles_on_country_id"
    t.index ["location_id"], name: "index_articles_on_location_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "country_id", null: false
    t.index ["country_id"], name: "index_locations_on_country_id"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable"
  end

  create_table "taggings", force: :cascade do |t|
    t.bigint "tag_id"
    t.string "taggable_type"
    t.bigint "taggable_id"
    t.string "tagger_type"
    t.bigint "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at", precision: nil
    t.string "tenant", limit: 128
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type", "taggable_id"], name: "index_taggings_on_taggable_type_and_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
    t.index ["tagger_type", "tagger_id"], name: "index_taggings_on_tagger_type_and_tagger_id"
    t.index ["tenant"], name: "index_taggings_on_tenant"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "articles", "countries"
  add_foreign_key "articles", "locations"
  add_foreign_key "locations", "countries"
  add_foreign_key "taggings", "tags"
end
