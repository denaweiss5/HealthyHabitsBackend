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

ActiveRecord::Schema.define(version: 2021_02_12_222741) do

  create_table "exercise_entries", force: :cascade do |t|
    t.string "category"
    t.date "date"
    t.float "duration"
    t.float "calories_burned"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meal_entries", force: :cascade do |t|
    t.string "meal_time"
    t.float "calories"
    t.integer "fat"
    t.integer "carbs"
    t.integer "protein"
    t.string "name"
    t.date "date"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.integer "calories"
    t.integer "carbs"
    t.integer "fat"
    t.integer "protein"
    t.text "directions"
    t.text "ingredients"
    t.string "image"
    t.integer "recipe_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weight_entries", force: :cascade do |t|
    t.float "weight"
    t.date "date"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
