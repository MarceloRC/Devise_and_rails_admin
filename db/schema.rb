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

ActiveRecord::Schema.define(version: 2021_08_04_142521) do

  create_table "aluguels", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.decimal "preco", precision: 10
    t.boolean "status"
    t.datetime "data_retirada"
    t.datetime "data_devolucao"
    t.integer "carro_id"
    t.integer "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carros", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "marca"
    t.string "tipo"
    t.boolean "disponivel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.string "documento"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sinistros", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.decimal "preco", precision: 10
    t.decimal "decimal", precision: 10
    t.boolean "status"
    t.integer "tipo"
    t.text "descrição"
    t.integer "aluguel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
