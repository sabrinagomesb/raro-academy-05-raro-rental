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

ActiveRecord::Schema[7.0].define(version: 2023_04_12_235717) do
  create_table "aluguels", force: :cascade do |t|
    t.integer "cliente_id", null: false
    t.integer "veiculo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "data_inicio"
    t.date "data_fim"
    t.index ["cliente_id"], name: "index_aluguels_on_cliente_id"
    t.index ["veiculo_id"], name: "index_aluguels_on_veiculo_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "cnh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unidades", force: :cascade do |t|
    t.string "endereco"
    t.string "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "numero", default: "100", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nome"
    t.string "foto"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  create_table "veiculos", force: :cascade do |t|
    t.string "marca"
    t.string "modelo"
    t.string "placa"
    t.string "chassi"
    t.string "cor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "aluguels", "clientes"
  add_foreign_key "aluguels", "veiculos"
end
