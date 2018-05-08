# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_05_08_093402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name_for_goals"
    t.string "name_for_expertises"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "charities", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "text"
    t.integer "author_id"
    t.integer "recommendation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donations", force: :cascade do |t|
    t.integer "charity_id"
    t.integer "user_id"
    t.integer "goal_id"
    t.money "amount", scale: 2
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.text "description"
    t.string "eventable_type"
    t.bigint "eventable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eventable_type", "eventable_id"], name: "index_events_on_eventable_type_and_eventable_id"
  end

  create_table "expertises", force: :cascade do |t|
    t.text "tags"
    t.integer "user_id"
    t.integer "category_id"
    t.string "image"
    t.text "description"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.text "tags"
    t.integer "user_id"
    t.integer "category_id"
    t.string "image"
    t.text "description"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recommendations", force: :cascade do |t|
    t.text "text"
    t.integer "author_id"
    t.integer "goal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "slack_name"
    t.string "slack_id"
    t.text "small_avatar"
    t.text "big_avatar"
    t.string "email"
    t.integer "rating"
    t.integer "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
