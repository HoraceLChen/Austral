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

ActiveRecord::Schema[7.1].define(version: 2025_08_12_064347) do
  create_table "catalogs", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.string "season"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "page_shoes", force: :cascade do |t|
    t.integer "page_id", null: false
    t.integer "shoe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["page_id", "shoe_id"], name: "index_page_shoes_on_page_id_and_shoe_id", unique: true
    t.index ["page_id"], name: "index_page_shoes_on_page_id"
    t.index ["shoe_id"], name: "index_page_shoes_on_shoe_id"
  end

  create_table "pages", force: :cascade do |t|
    t.integer "page_number", null: false
    t.integer "catalog_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["catalog_id", "page_number"], name: "index_pages_on_catalog_id_and_page_number", unique: true
    t.index ["catalog_id"], name: "index_pages_on_catalog_id"
  end

  create_table "shoes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.json "colors"
    t.integer "price"
    t.json "upper"
    t.json "insole"
    t.json "lining"
    t.text "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "page_shoes", "pages"
  add_foreign_key "page_shoes", "shoes"
  add_foreign_key "pages", "catalogs"
end
