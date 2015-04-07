# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150407074559) do

  create_table "achievements", force: true do |t|
    t.integer  "user_id",                  null: false
    t.integer  "challenge_id",             null: false
    t.integer  "level_id",                 null: false
    t.integer  "star",         default: 0, null: false
    t.date     "date",                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appointments", force: true do |t|
    t.integer  "user_id"
    t.datetime "duedate"
    t.boolean  "complete"
    t.integer  "doctor"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "behavior_modification_levels", force: true do |t|
    t.integer  "user_id",                null: false
    t.integer  "green",      default: 1, null: false
    t.integer  "low_gi",     default: 1, null: false
    t.integer  "oil",        default: 1, null: false
    t.integer  "balance",    default: 1, null: false
    t.integer  "order",      default: 1, null: false
    t.integer  "light",      default: 1, null: false
    t.integer  "drink",      default: 1, null: false
    t.integer  "alcohol",    default: 1, null: false
    t.integer  "morning",    default: 1, null: false
    t.integer  "dinner",     default: 1, null: false
    t.integer  "snack",      default: 1, null: false
    t.integer  "mental",     default: 1, null: false
    t.integer  "midnight",   default: 1, null: false
    t.integer  "suger",      default: 1, null: false
    t.integer  "pose",       default: 1, null: false
    t.integer  "life",       default: 1, null: false
    t.integer  "muscle",     default: 1, null: false
    t.integer  "jogging",    default: 1, null: false
    t.integer  "sports",     default: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "challenges", force: true do |t|
    t.integer  "group"
    t.string   "caption"
    t.string   "description"
    t.string   "description_1"
    t.string   "description_2"
    t.string   "description_3"
    t.string   "description_4"
    t.string   "comment"
    t.string   "category"
    t.integer  "param_0"
    t.integer  "param_1"
    t.integer  "param_2"
    t.binary   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", force: true do |t|
    t.integer  "group",                             null: false
    t.integer  "score",                             null: false
    t.boolean  "convenience_store", default: false
    t.string   "name",                              null: false
    t.string   "tips"
    t.integer  "protein",                           null: false
    t.integer  "vegetable",                         null: false
    t.integer  "lipid",                             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "levels", force: true do |t|
    t.integer  "challenge_id",             null: false
    t.integer  "group",                    null: false
    t.integer  "level",                    null: false
    t.integer  "stage",        default: 0, null: false
    t.integer  "rank",         default: 0, null: false
    t.string   "caption"
    t.string   "description"
    t.string   "comment"
    t.string   "tips"
    t.integer  "star",         default: 0, null: false
    t.integer  "term",         default: 0, null: false
    t.binary   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meal_points", force: true do |t|
    t.integer  "user_id",                          null: false
    t.integer  "recommendation_point",             null: false
    t.integer  "current_point",        default: 0, null: false
    t.date     "start_day",                        null: false
    t.date     "end_day",                          null: false
    t.integer  "how_long_month",       default: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meal_records", force: true do |t|
    t.integer  "food_id",    null: false
    t.integer  "user_id",    null: false
    t.integer  "meal_code",  null: false
    t.date     "date",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",                                 null: false
    t.string   "password_digest",                      null: false
    t.string   "email",                                null: false
    t.string   "gender"
    t.string   "occupation"
    t.string   "purpose"
    t.float    "height"
    t.float    "initial_weight"
    t.float    "target_weight"
    t.float    "current_weight"
    t.float    "loss_rate"
    t.float    "current_bmi"
    t.integer  "ticket_count"
    t.integer  "target_disease"
    t.date     "birthday"
    t.string   "auto_login_token"
    t.float    "initial_bmi"
    t.boolean  "pro_edition",          default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "weight_at_age_twenty"
    t.integer  "max_weight"
    t.integer  "age_of_max_weight"
    t.string   "reason"
    t.integer  "how_much_lose_weight"
    t.integer  "intensity_of_losing"
    t.integer  "sleep_time"
    t.string   "sleep_comment"
    t.string   "alcohole"
    t.integer  "how_much_alcohole"
    t.integer  "frequency_in_drink"
    t.string   "exercising_custom"
    t.string   "club_activity"
    t.integer  "active_of_work"
    t.integer  "breakfast_custom"
    t.integer  "breakfast_time"
    t.string   "breakfast_staple"
    t.integer  "lunch_custom"
    t.integer  "lunch_time"
    t.string   "lunch_staple"
    t.integer  "dinner_custom"
    t.integer  "dinner_time"
    t.string   "dinner_staple"
    t.integer  "between_meal"
    t.integer  "between_time"
    t.string   "between_food"
    t.integer  "midnight_meal"
    t.integer  "midnight_time"
    t.string   "midnight_food"
    t.string   "illness"
    t.string   "medicine"
    t.string   "allergy"
    t.string   "stress"
    t.integer  "smoking_custom"
    t.string   "smoking_condition"
    t.string   "contact_id"
    t.boolean  "doctor"
    t.integer  "wake_time"
  end

  create_table "weights", force: true do |t|
    t.integer  "user_id",    null: false
    t.float    "weight",     null: false
    t.date     "date",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
