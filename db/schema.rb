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

ActiveRecord::Schema.define(version: 2020_01_12_200855) do

  create_table "bar_graphs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "xAxis"
    t.string "flattenedSeries"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "dataset_id"
  end

  create_table "datasets", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "csv_url"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_datasets_on_user_id"
  end

  create_table "line_graphs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "xAxis"
    t.string "flattenedSeries"
    t.integer "dataset_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dataset_id"], name: "index_line_graphs_on_dataset_id"
  end

  create_table "pie_graphs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "xAxis"
    t.string "flattenedSeries"
    t.integer "dataset_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dataset_id"], name: "index_pie_graphs_on_dataset_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "line_graphs", "datasets"
  add_foreign_key "pie_graphs", "datasets"
end
