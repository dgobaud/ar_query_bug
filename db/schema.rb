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

ActiveRecord::Schema.define(version: 20140907071100) do

  create_table "email_attachments", force: true do |t|
    t.integer  "email_id"
    t.text     "filename"
    t.text     "content_type"
    t.integer  "file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_folder_mappings", force: true do |t|
    t.integer  "email_id"
    t.integer  "email_folder_id"
    t.string   "email_folder_type"
    t.integer  "email_thread_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "email_folder_mappings", ["email_thread_id"], name: "index_email_folder_mappings_on_email_thread_id"

  create_table "email_threads", force: true do |t|
    t.text     "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", force: true do |t|
    t.integer  "email_thread_id"
    t.text     "uid"
    t.text     "draft_id"
    t.text     "message_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gmail_labels", force: true do |t|
    t.integer  "gmail_account_id"
    t.text     "label_id"
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
