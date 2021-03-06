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

ActiveRecord::Schema.define(version: 20140410195630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "people", force: true do |t|
    t.string   "nome"
    t.string   "cognome"
    t.string   "mail"
    t.string   "tel1"
    t.string   "tel2"
    t.string   "tel3"
    t.string   "indirizzo"
    t.string   "comune"
    t.string   "provincia"
    t.string   "regione"
    t.string   "incarico"
    t.string   "seggio"
    t.string   "riferimento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tel4"
    t.string   "priorita"
    t.text     "note"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
