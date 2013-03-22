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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130322185425) do

  create_table "degrees", :force => true do |t|
    t.integer  "people_importer_id"
    t.string   "degree_type"
    t.string   "subject"
    t.string   "institution"
    t.integer  "graduated_year"
    t.integer  "graduated_month"
    t.integer  "graduated_day"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "infos", :force => true do |t|
    t.string   "tag_list"
    t.string   "twitter_username"
    t.string   "birthplace"
    t.integer  "born_year"
    t.string   "born_month"
    t.string   "born_day"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "permalink"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
