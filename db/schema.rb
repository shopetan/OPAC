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

ActiveRecord::Schema.define(version: 20150705113715) do

  create_table "opacs", force: :cascade do |t|
    t.text     "nbc"
    t.text     "isbn"
    t.text     "tr"
    t.text     "author"
    t.text     "pub"
    t.text     "year"
    t.text     "phys"
    t.text     "series"
    t.text     "note"
    t.text     "titleheading"
    t.text     "authorheading"
    t.text     "holdingsrecord"
    t.text     "holdingloc"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "ed"
    t.text     "holdingphys"
  end

end
