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

ActiveRecord::Schema.define(version: 20170131173436) do

  create_table "adres", force: true do |t|
    t.integer  "ID_adres"
    t.string   "miejscowosc1"
    t.string   "miejscowosc2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hobbies", force: true do |t|
    t.integer  "ID_hobby"
    t.string   "nazwa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telefons", force: true do |t|
    t.integer  "ID_telefon"
    t.string   "numer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uzytkowniks", force: true do |t|
    t.string   "imie"
    t.string   "nazwisko"
    t.integer  "ID_Telefon"
    t.integer  "ID_Adres"
    t.integer  "ID_Hobby"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
