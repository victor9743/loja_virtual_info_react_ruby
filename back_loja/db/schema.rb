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

ActiveRecord::Schema.define(version: 2023_11_27_153405) do

  create_table "compra_clientes", force: :cascade do |t|
    t.integer "id_usuario"
    t.integer "id_processador"
    t.integer "id_placa_mae"
    t.integer "id_memoria_ram"
    t.integer "qtd_memoria"
    t.integer "preco_final"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "marcas", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "memorias_rams", force: :cascade do |t|
    t.string "nome"
    t.integer "capacidade"
    t.string "tipo"
    t.string "velocidade"
    t.integer "preco"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "placas_maes", force: :cascade do |t|
    t.string "nome"
    t.string "marca"
    t.string "soquete"
    t.integer "compatibilidade_id"
    t.integer "capacidade_mem_max"
    t.integer "preco"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "processadors", force: :cascade do |t|
    t.string "nome"
    t.integer "marca_id"
    t.string "soquete"
    t.string "velocidade"
    t.integer "preco"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome_completo"
    t.string "usuario"
    t.string "senha"
    t.string "endereco_entrega"
    t.string "telefone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
