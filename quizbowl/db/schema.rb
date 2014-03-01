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

ActiveRecord::Schema.define(version: 20140213223634) do

  create_table "answers", force: true do |t|
    t.integer  "question_id"
    t.text     "answer"
    t.boolean  "is_correct"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "game", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hosts", force: true do |t|
    t.string   "host_name"
    t.string   "primary_contact_name"
    t.string   "email"
    t.string   "add_l1"
    t.string   "add_l2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "game_count"
    t.string   "phone_num"
    t.string   "password"
    t.text     "password_hint"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hosttypes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.integer "user_id"
    t.integer "game_id"
  end

  create_table "provides", force: true do |t|
    t.integer "host_id"
    t.integer "game_id"
  end

  create_table "questions", force: true do |t|
    t.text     "question"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subject", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "first"
    t.string   "last"
    t.integer  "age"
    t.integer  "high_score"
    t.integer  "ranking"
    t.string   "city"
    t.string   "state"
    t.string   "sex"
    t.integer  "zip"
    t.string   "password_digest"
    t.text     "password_hint"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
