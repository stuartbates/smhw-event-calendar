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

ActiveRecord::Schema.define(version: 20160615080010) do

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text   "description"
    t.date   "start_date"
    t.date   "end_date"
  end

  add_index "events", ["end_date"], name: "index_events_on_end_date"
  add_index "events", ["start_date"], name: "index_events_on_start_date"

end
