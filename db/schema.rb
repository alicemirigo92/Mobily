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

ActiveRecord::Schema[7.0].define(version: 2023_12_18_194403) do
  create_table "deputy_headteachers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "school_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_deputy_headteachers_on_school_id"
    t.index ["user_id"], name: "index_deputy_headteachers_on_user_id"
  end

  create_table "grades", force: :cascade do |t|
    t.integer "teacher_id", null: false
    t.integer "school_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_grades_on_school_id"
    t.index ["teacher_id"], name: "index_grades_on_teacher_id"
  end

  create_table "headteachers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "school_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_headteachers_on_school_id"
    t.index ["user_id"], name: "index_headteachers_on_user_id"
  end

  create_table "owners", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_owners_on_user_id"
  end

  create_table "parents", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_parents_on_user_id"
  end

  create_table "schools", force: :cascade do |t|
    t.integer "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_schools_on_owner_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "grade_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_students_on_grade_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "school_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_teachers_on_school_id"
    t.index ["user_id"], name: "index_teachers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "type"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "deputy_headteachers", "schools"
  add_foreign_key "deputy_headteachers", "users"
  add_foreign_key "grades", "schools"
  add_foreign_key "grades", "teachers"
  add_foreign_key "headteachers", "schools"
  add_foreign_key "headteachers", "users"
  add_foreign_key "owners", "users"
  add_foreign_key "parents", "users"
  add_foreign_key "schools", "owners"
  add_foreign_key "students", "grades"
  add_foreign_key "students", "users"
  add_foreign_key "teachers", "schools"
  add_foreign_key "teachers", "users"
end
