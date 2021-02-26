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

ActiveRecord::Schema.define(version: 2021_02_26_181303) do

  create_table "assignment_feedbacks", force: :cascade do |t|
    t.string "content"
    t.integer "grade"
    t.integer "assignment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["assignment_id"], name: "index_assignment_feedbacks_on_assignment_id"
    t.index ["user_id"], name: "index_assignment_feedbacks_on_user_id"
  end

  create_table "assignments", force: :cascade do |t|
    t.integer "user_id"
    t.string "gitlab_link"
    t.integer "homework_id"
    t.integer "delay_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["homework_id"], name: "index_assignments_on_homework_id"
    t.index ["user_id"], name: "index_assignments_on_user_id"
  end

  create_table "coursewares", force: :cascade do |t|
    t.string "content"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_coursewares_on_lesson_id"
  end

  create_table "homeworks", force: :cascade do |t|
    t.string "description"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deadline"
    t.index ["lesson_id"], name: "index_homeworks_on_lesson_id"
  end

  create_table "lesson_feedbacks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "lesson_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_lesson_feedbacks_on_lesson_id"
    t.index ["user_id"], name: "index_lesson_feedbacks_on_user_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "description"
    t.string "link_youtube"
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "schedule"
    t.index ["subject_id"], name: "index_lessons_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
