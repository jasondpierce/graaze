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

ActiveRecord::Schema.define(version: 2018_08_04_211716) do

  create_table "animals", force: :cascade do |t|
    t.integer "tag_number"
    t.string "breed"
    t.date "dob"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date_exposed"
    t.integer "herd_id"
    t.index ["herd_id"], name: "index_animals_on_herd_id"
  end

  create_table "finances", force: :cascade do |t|
    t.string "item"
    t.string "category"
    t.decimal "amount"
    t.string "pay_type"
    t.string "tran_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "herd_id"
    t.index ["herd_id"], name: "index_finances_on_herd_id"
  end

  create_table "herds", force: :cascade do |t|
    t.string "name"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "animal_id"
    t.integer "pasture_id"
    t.index ["animal_id"], name: "index_herds_on_animal_id"
    t.index ["pasture_id"], name: "index_herds_on_pasture_id"
  end

  create_table "livestocks", force: :cascade do |t|
    t.string "tag_number"
    t.integer "breed"
    t.date "DOB"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pastures", force: :cascade do |t|
    t.date "date_grazed"
    t.integer "available_forage"
    t.integer "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "herd_id"
    t.index ["herd_id"], name: "index_pastures_on_herd_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "email"
    t.string "token"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_animals", force: :cascade do |t|
    t.integer "user_id"
    t.integer "animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_user_animals_on_animal_id"
    t.index ["user_id"], name: "index_user_animals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
