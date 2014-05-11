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

ActiveRecord::Schema.define(version: 20140511164734) do

  create_table "comments", force: true do |t|
    t.integer "user_id"
    t.text    "content"
    t.integer "commentable_id"
    t.string  "commentable_type"
  end

  create_table "events", force: true do |t|
    t.string "name"
    t.text   "description"
    t.date   "event_date"
  end

  create_table "photos", force: true do |t|
    t.string  "name"
    t.text    "description"
    t.string  "user_image"
    t.integer "user_id"
  end

  create_table "photos_tags", force: true do |t|
    t.integer "photo_id"
    t.integer "tag_id"
  end

  create_table "photos_users", id: false, force: true do |t|
    t.integer "photo_id"
    t.integer "user_id"
  end

  create_table "tags", force: true do |t|
    t.string "name"
  end

  create_table "users", force: true do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

end
