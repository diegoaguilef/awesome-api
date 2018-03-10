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

ActiveRecord::Schema.define(version: 20180309212702) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.integer "bill_number"
    t.date "bill_date"
    t.string "description"
    t.integer "quantity"
    t.float "price"
    t.float "neto_price"
    t.float "iva"
    t.float "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "city"
    t.string "comunne"
    t.string "rut"
    t.string "giro"
    t.integer "phone"
    t.integer "cell_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "machines", force: :cascade do |t|
    t.string "model"
    t.string "brand"
    t.integer "year"
    t.float "capacity"
    t.string "engine"
    t.string "engine_model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchase_orders", force: :cascade do |t|
    t.integer "code"
    t.integer "article"
    t.integer "quantity"
    t.float "unity_price"
    t.float "total_price"
    t.string "comments"
    t.float "price_neto"
    t.float "price_total"
    t.date "order_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotations", force: :cascade do |t|
    t.integer "quotation_number"
    t.date "quotation_date"
    t.integer "report_number"
    t.string "details"
    t.integer "quantity"
    t.integer "unity"
    t.float "unity_price"
    t.float "total_neto"
    t.float "total_price"
    t.float "iva"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_reports", force: :cascade do |t|
    t.date "report_date"
    t.integer "report_number"
    t.string "address"
    t.string "details"
    t.string "spare_parts"
    t.string "note"
    t.string "attendant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "rut"
    t.string "email"
    t.integer "cell_phone"
    t.string "address"
    t.string "birth_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
