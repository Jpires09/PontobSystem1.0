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

ActiveRecord::Schema[7.1].define(version: 2024_08_05_225251) do
  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.date "birth_date"
    t.string "plan"
    t.string "slots"
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
    t.integer "slot_id", null: false
    t.integer "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_enrollments_on_client_id"
    t.index ["slot_id"], name: "index_enrollments_on_slot_id"
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

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
    t.string "price_currency", default: "USD", null: false
  end

  create_table "semanals", force: :cascade do |t|
    t.integer "turmas_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["turmas_id"], name: "index_semanals_on_turmas_id"
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

  create_table "slots", force: :cascade do |t|
    t.string "day"
    t.string "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "age"
    t.string "modality"
    t.integer "semanal_id"
    t.integer "professor_titular_id", default: 1
    t.index ["professor_titular_id"], name: "index_slots_on_professor_titular_id"
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

  add_foreign_key "enrollments", "clients"
  add_foreign_key "enrollments", "slots"
  add_foreign_key "physicals", "sessions"
  add_foreign_key "semanals", "slots", column: "turmas_id"
  add_foreign_key "slots", "employees", column: "professor_titular_id"
  add_foreign_key "warm_ups", "sessions"
end
