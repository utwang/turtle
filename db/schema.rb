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

ActiveRecord::Schema.define(version: 20150525023134) do

  create_table "comments", force: :cascade do |t|
    t.integer  "post_id"
    t.string   "content",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"

  create_table "eggs", force: :cascade do |t|
    t.integer  "turtle_id"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "eggs", ["turtle_id"], name: "index_eggs_on_turtle_id"

  create_table "posts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shells", force: :cascade do |t|
    t.integer  "turtle_id"
    t.integer  "age"
    t.string   "color",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shells", ["turtle_id"], name: "index_shells_on_turtle_id"

  create_table "taggables", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taggables", ["post_id"], name: "index_taggables_on_post_id"
  add_index "taggables", ["tag_id"], name: "index_taggables_on_tag_id"

  create_table "tags", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turtles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "aasm_state", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  limit: 255, null: false
    t.integer  "item_id",                null: false
    t.string   "event",      limit: 255, null: false
    t.string   "whodunnit",  limit: 255
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"

end
