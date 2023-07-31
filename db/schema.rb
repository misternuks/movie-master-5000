# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_19_061704) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movie_bookmarks", force: :cascade do |t|
    t.string "comment"
    t.bigint "movie_movie_id", null: false
    t.bigint "movie_list_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_list_id"], name: "index_movie_bookmarks_on_movie_list_id"
    t.index ["movie_movie_id"], name: "index_movie_bookmarks_on_movie_movie_id"
  end

  create_table "movie_lists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_movies", force: :cascade do |t|
    t.string "title"
    t.string "summary"
    t.string "image_url"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plan_tasks", force: :cascade do |t|
    t.string "title"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "completed", default: false
    t.date "date"
  end

  add_foreign_key "movie_bookmarks", "movie_lists"
  add_foreign_key "movie_bookmarks", "movie_movies"
end
