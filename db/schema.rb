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

ActiveRecord::Schema.define(version: 2021_05_19_202639) do

  create_table "cookbooks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "recipe_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_cookbooks_on_recipe_id"
    t.index ["user_id"], name: "index_cookbooks_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "origin"
    t.text "instructions"
    t.string "ingredient1"
    t.string "ingredient2"
    t.string "ingredient3"
    t.string "ingredient4"
    t.string "ingredient5"
    t.string "ingredient6"
    t.string "ingredient7"
    t.string "ingredient8"
    t.string "ingredient9"
    t.string "ingredient10"
    t.string "ingredient11"
    t.string "ingredient12"
    t.string "ingredient13"
    t.string "ingredient14"
    t.string "ingredient15"
    t.string "ingredient16"
    t.string "ingredient17"
    t.string "ingredient18"
    t.string "ingredient19"
    t.string "ingredient20"
    t.string "measurement1"
    t.string "measurement2"
    t.string "measurement3"
    t.string "measurement4"
    t.string "measurement5"
    t.string "measurement6"
    t.string "measurement7"
    t.string "measurement8"
    t.string "measurement9"
    t.string "measurement10"
    t.string "measurement11"
    t.string "measurement12"
    t.string "measurement13"
    t.string "measurement14"
    t.string "measurement15"
    t.string "measurement16"
    t.string "measurement17"
    t.string "measurement18"
    t.string "measurement19"
    t.string "measurement20"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
