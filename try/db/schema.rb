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

ActiveRecord::Schema.define(version: 20150704124615) do

  create_table "authors", force: :cascade do |t|
    t.integer  "publish_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "authors", ["publish_id"], name: "index_authors_on_publish_id"

  create_table "comms", force: :cascade do |t|
    t.string   "name"
    t.integer  "publish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comms", ["publish_id"], name: "index_comms_on_publish_id"

  create_table "publishes", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
