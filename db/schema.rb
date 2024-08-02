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

ActiveRecord::Schema[7.1].define(version: 2024_08_02_171314) do
  create_table "aquecimentos", force: :cascade do |t|
    t.string "articular"
    t.string "cardio"
    t.string "tecnico"
    t.integer "aula_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aula_id"], name: "index_aquecimentos_on_aula_id"
  end

  create_table "aulas", force: :cascade do |t|
    t.date "data"
    t.string "conteudo"
    t.string "objetivo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "aquecimento", default: {}
    t.text "tecnico"
    t.json "fisico", default: {}
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.date "birth_date"
    t.string "plan"
    t.string "classes"
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
    t.integer "turma_id", null: false
    t.integer "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_enrollments_on_client_id"
    t.index ["turma_id"], name: "index_enrollments_on_turma_id"
  end

  create_table "fisicos", force: :cascade do |t|
    t.string "grupo"
    t.string "fase"
    t.string "exercicio"
    t.integer "aula_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aula_id"], name: "index_fisicos_on_aula_id"
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

  create_table "turmas", force: :cascade do |t|
    t.string "dia_da_semana"
    t.string "horario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "faixa_etaria"
    t.string "modalidade"
    t.integer "semanal_id"
    t.integer "professor_titular_id", default: 1
    t.index ["professor_titular_id"], name: "index_turmas_on_professor_titular_id"
  end

  add_foreign_key "aquecimentos", "aulas"
  add_foreign_key "enrollments", "clients"
  add_foreign_key "enrollments", "turmas"
  add_foreign_key "fisicos", "aulas"
  add_foreign_key "semanals", "turmas", column: "turmas_id"
  add_foreign_key "turmas", "employees", column: "professor_titular_id"
end
