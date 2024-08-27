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

ActiveRecord::Schema[7.1].define(version: 2024_08_14_000421) do
  create_table "calendar_days", force: :cascade do |t|
    t.date "date"
    t.integer "calendar_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["calendar_id"], name: "index_calendar_days_on_calendar_id"
  end

  create_table "calendars", force: :cascade do |t|
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cash_registers", force: :cascade do |t|
    t.decimal "opening_balance"
    t.decimal "closing_balance"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.date "birth_date"
    t.string "plan"
    t.string "groups"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.date "admition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_enrollments_on_client_id"
    t.index ["group_id"], name: "index_enrollments_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "day"
    t.string "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "age"
    t.string "modality"
    t.integer "semanal_id"
    t.integer "professor_titular_id", default: 1
    t.index ["professor_titular_id"], name: "index_groups_on_professor_titular_id"
  end

  create_table "physicals", force: :cascade do |t|
    t.string "group"
    t.string "phase"
    t.string "exercise"
    t.integer "session_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_physicals_on_session_id"
  end

  create_table "plan_assignments", force: :cascade do |t|
    t.integer "special_plan_id", null: false
    t.integer "group_id", null: false
    t.integer "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_plan_assignments_on_client_id"
    t.index ["group_id"], name: "index_plan_assignments_on_group_id"
    t.index ["special_plan_id"], name: "index_plan_assignments_on_special_plan_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.string "frequency"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "price_currency", default: "USD", null: false
    t.decimal "price"
  end

  create_table "sales", force: :cascade do |t|
    t.string "product"
    t.integer "quantity"
    t.decimal "price"
    t.decimal "total"
    t.date "date"
    t.integer "cash_register_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cash_register_id"], name: "index_sales_on_cash_register_id"
  end

  create_table "semanals", force: :cascade do |t|
    t.integer "groups_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["groups_id"], name: "index_semanals_on_groups_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.date "date"
    t.string "content"
    t.string "objective"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "warm_up", default: {}
    t.text "skill"
    t.json "physical", default: {}
  end

  create_table "warm_ups", force: :cascade do |t|
    t.string "joint"
    t.string "cardio"
    t.string "skill"
    t.integer "session_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_warm_ups_on_session_id"
  end

  add_foreign_key "calendar_days", "calendars"
  add_foreign_key "enrollments", "clients"
  add_foreign_key "enrollments", "groups"
  add_foreign_key "groups", "employees", column: "professor_titular_id"
  add_foreign_key "physicals", "sessions"
  add_foreign_key "plan_assignments", "clients"
  add_foreign_key "plan_assignments", "groups"
  add_foreign_key "plan_assignments", "special_plans"
  add_foreign_key "sales", "cash_registers"
  add_foreign_key "semanals", "groups", column: "groups_id"
  add_foreign_key "warm_ups", "sessions"
end
