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

ActiveRecord::Schema.define(version: 2020_11_25_185640) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "key"
    t.string "title"
    t.string "blurb"
  end

  create_table "goals", force: :cascade do |t|
    t.integer "user_id"
    t.string "goal1_name"
    t.integer "goal1"
    t.string "goal2_name"
    t.integer "goal2"
    t.string "goal3_name"
    t.integer "goal3"
    t.string "goal4_name"
    t.integer "goal4"
    t.string "early_game_goal_name"
    t.integer "early_game_goal"
    t.string "mid_game_goal_name"
    t.integer "mid_game_goal"
    t.string "late_game_goal_name"
    t.integer "late_game_goal"
  end

  create_table "items", force: :cascade do |t|
    t.string "key"
    t.string "name"
    t.string "description"
    t.string "stats"
    t.string "short"
    t.integer "cost"
    t.string "tags"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spells", force: :cascade do |t|
    t.string "name"
    t.integer "key"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
