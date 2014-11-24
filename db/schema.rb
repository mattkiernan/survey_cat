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

ActiveRecord::Schema.define(version: 20141124015518) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: true do |t|
    t.integer  "question_id"
    t.integer  "response_id",            null: false
    t.string   "body"
    t.integer  "multi_choice_option_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "multi_choice_options", force: true do |t|
    t.string   "body",                  null: false
    t.integer  "multi_choice_style_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "multi_choice_styles", force: true do |t|
    t.string   "body",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.integer  "survey_id",  null: false
    t.string   "style_type", null: false
    t.integer  "style_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "questions", ["style_id"], name: "index_questions_on_style_id", using: :btree
  add_index "questions", ["survey_id"], name: "index_questions_on_survey_id", using: :btree

  create_table "responses", force: true do |t|
    t.integer  "survey_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "responses", ["survey_id"], name: "index_responses_on_survey_id", using: :btree

  create_table "surveys", force: true do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.integer  "user_id",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "surveys", ["user_id"], name: "index_surveys_on_user_id", using: :btree

  create_table "text_styles", force: true do |t|
    t.string   "body",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: true do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
