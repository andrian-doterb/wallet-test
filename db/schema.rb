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

ActiveRecord::Schema[7.0].define(version: 2022_10_23_104116) do
  create_table "accounts", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.string "number", null: false
    t.decimal "balance", precision: 8, scale: 2, default: "0.0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_accounts_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "username", null: false
    t.string "full_name", null: false
    t.string "email", null: false
    t.date "born_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.string "name", null: false
    t.string "code", null: false
    t.string "stock_type", null: false
    t.decimal "balance", precision: 8, scale: 2, default: "0.0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string "code"
    t.string "transaction_type"
    t.decimal "amount", precision: 8, scale: 2, default: "0.0", null: false
    t.integer "stock_id"
    t.integer "sender_id"
    t.integer "receiver_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_transactions_on_receiver_id"
    t.index ["sender_id"], name: "index_transactions_on_sender_id"
    t.index ["stock_id"], name: "index_transactions_on_stock_id"
  end

  add_foreign_key "accounts", "customers"
  add_foreign_key "transactions", "accounts", column: "receiver_id"
  add_foreign_key "transactions", "accounts", column: "sender_id"
  add_foreign_key "transactions", "stocks"
end
