# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_23_170020) do

  create_table "access_tokens", force: :cascade do |t|
    t.string "token", null: false
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_access_tokens_on_user_id"
  end

  create_table "carts", force: :cascade do |t|
    t.string "cart_id"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "qty"
    t.integer "product_id", null: false
    t.integer "store_id", null: false
    t.integer "product_variant_id", null: false
    t.index ["product_id"], name: "index_carts_on_product_id"
    t.index ["product_variant_id"], name: "index_carts_on_product_variant_id"
    t.index ["store_id"], name: "index_carts_on_store_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_id"
    t.string "cart_id"
    t.decimal "price"
    t.integer "qty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.integer "product_id", null: false
    t.integer "product_variant_id", null: false
    t.integer "store_id", null: false
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["product_variant_id"], name: "index_orders_on_product_variant_id"
    t.index ["store_id"], name: "index_orders_on_store_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "product_variants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "product_id", null: false
    t.index ["product_id"], name: "index_product_variants_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "store_id", null: false
    t.decimal "price"
    t.integer "stock"
    t.index ["store_id"], name: "index_products_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "address"
    t.string "avatar_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password"
  end

  add_foreign_key "access_tokens", "users"
  add_foreign_key "carts", "product_variants"
  add_foreign_key "carts", "products"
  add_foreign_key "carts", "stores"
  add_foreign_key "orders", "product_variants"
  add_foreign_key "orders", "products"
  add_foreign_key "orders", "stores"
  add_foreign_key "orders", "users"
  add_foreign_key "product_variants", "products"
  add_foreign_key "products", "stores"
end
