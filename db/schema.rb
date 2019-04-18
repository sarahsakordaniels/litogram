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

ActiveRecord::Schema.define(version: 2019_04_18_222711) do

  create_table "accounts", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true
  end

  create_table "art_works", force: :cascade do |t|
    t.string "title"
    t.string "style"
    t.text "description"
    t.integer "year"
    t.string "wiki"
    t.string "image_link"
    t.integer "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_art_works_on_artist_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.string "wiki"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.string "wiki"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "texts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "genre"
    t.index ["author_id"], name: "index_texts_on_author_id"
  end

  create_table "user_texts", force: :cascade do |t|
    t.integer "text_id"
    t.integer "user_id"
    t.index ["text_id"], name: "index_user_texts_on_text_id"
    t.index ["user_id"], name: "index_user_texts_on_user_id"
  end

  create_table "user_words", force: :cascade do |t|
    t.integer "user_id"
    t.integer "author_id"
    t.index ["author_id"], name: "index_user_words_on_author_id"
    t.index ["user_id"], name: "index_user_words_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "word_of_the_days", force: :cascade do |t|
    t.string "word"
    t.text "definition"
    t.text "origin"
    t.text "example"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "part_of_speech"
    t.string "pronunciation"
  end

end
