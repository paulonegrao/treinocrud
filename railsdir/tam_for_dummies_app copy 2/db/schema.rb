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

ActiveRecord::Schema.define(version: 20160216062212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lectures", force: :cascade do |t|
    t.integer  "chapter"
    t.string   "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "streams", force: :cascade do |t|
    t.string   "timestamp"
    t.text     "description"
    t.integer  "lecture_id"
    t.integer  "topic_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "streams", ["lecture_id"], name: "index_streams_on_lecture_id", using: :btree
  add_index "streams", ["topic_id"], name: "index_streams_on_topic_id", using: :btree

  create_table "topics", force: :cascade do |t|
    t.integer  "number"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "lecture_id"
  end

  add_index "topics", ["lecture_id"], name: "index_topics_on_lecture_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "type"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "streams", "lectures"
  add_foreign_key "streams", "topics"
  add_foreign_key "topics", "lectures"
end
