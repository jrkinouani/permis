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

ActiveRecord::Schema.define(version: 20190201142928) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "messages", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "price"
    t.string "phone"
    t.string "address"
    t.integer "stage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "date1"
    t.string "document"
    t.string "born"
    t.string "docidone"
    t.string "docidtwo"
    t.index ["stage_id"], name: "index_reservations_on_stage_id"
  end

  create_table "stages", force: :cascade do |t|
    t.string "titre"
    t.string "date1"
    t.string "date2"
    t.string "date3"
    t.string "ville"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "price"
  end

end
