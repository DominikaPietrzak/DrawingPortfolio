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

ActiveRecord::Schema.define(version: 20180717122918) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arts", force: :cascade do |t|
    t.string "name"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "imageart_file_name"
    t.string "imageart_content_type"
    t.integer "imageart_file_size"
    t.datetime "imageart_updated_at"
    t.index ["user_id"], name: "index_arts_on_user_id"
  end

  create_table "comic_books", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_comic_books_on_user_id"
  end

  create_table "comic_chapters", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "comic_book_id"
    t.integer "number"
    t.index ["comic_book_id"], name: "index_comic_chapters_on_comic_book_id"
  end

  create_table "comic_pages", force: :cascade do |t|
    t.integer "number"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "comic_chapter_id"
    t.string "comicimage_file_name"
    t.string "comicimage_content_type"
    t.integer "comicimage_file_size"
    t.datetime "comicimage_updated_at"
    t.index ["comic_chapter_id"], name: "index_comic_pages_on_comic_chapter_id"
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
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "arts", "users"
  add_foreign_key "comic_books", "users"
  add_foreign_key "comic_chapters", "comic_books"
  add_foreign_key "comic_pages", "comic_chapters"
end
