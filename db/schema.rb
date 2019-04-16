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

ActiveRecord::Schema.define(version: 2019_04_16_162653) do

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.string "wiki"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "text_genres", force: :cascade do |t|
    t.integer "text_id"
    t.integer "genre_id"
    t.index ["genre_id"], name: "index_text_genres_on_genre_id"
    t.index ["text_id"], name: "index_text_genres_on_text_id"
  end

  create_table "texts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  end

end
