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

ActiveRecord::Schema.define(version: 2018_05_08_145823) do

  create_table "course_professors", force: :cascade do |t|
    t.integer "course_id"
    t.integer "professors_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_professors_on_course_id"
    t.index ["professors_id"], name: "index_course_professors_on_professors_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "code", limit: 50, null: false
    t.string "name", limit: 200, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professor_user_ratings", force: :cascade do |t|
    t.integer "professor_id"
    t.integer "user_id"
    t.integer "rating"
    t.datetime "date_rated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professor_id"], name: "index_professor_user_ratings_on_professor_id"
    t.index ["user_id"], name: "index_professor_user_ratings_on_user_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "first_name", limit: 200, null: false
    t.string "middle_name", limit: 200
    t.string "last_name", limit: 200, null: false
    t.datetime "birth_date"
    t.datetime "date_hired"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", limit: 200, null: false
    t.string "middle_name"
    t.string "last_name", limit: 200, null: false
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
