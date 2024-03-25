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

ActiveRecord::Schema[7.1].define(version: 2024_03_24_235615) do
  create_table "cart_items", force: :cascade do |t|
    t.integer "cart_id", null: false
    t.integer "tableau_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_cart_items_on_cart_id"
    t.index ["tableau_id"], name: "index_cart_items_on_tableau_id"
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commande_items", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "tableau_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_commande_items_on_order_id"
    t.index ["tableau_id"], name: "index_commande_items_on_tableau_id"
  end

  create_table "commandes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.decimal "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_commandes_on_user_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "tableau_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["tableau_id"], name: "index_order_items_on_tableau_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id", null: false
    t.decimal "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "panier_items", force: :cascade do |t|
    t.integer "panier_id", null: false
    t.integer "tableau_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["panier_id"], name: "index_panier_items_on_panier_id"
    t.index ["tableau_id"], name: "index_panier_items_on_tableau_id"
  end

  create_table "paniers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tableaus", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.decimal "price"
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_tableaus_on_category_id"
  end

  create_table "tableauxes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.decimal "price"
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_tableauxes_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cart_items", "carts"
  add_foreign_key "cart_items", "tableaus"
  add_foreign_key "commande_items", "orders"
  add_foreign_key "commande_items", "tableaus"
  add_foreign_key "commandes", "users"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "tableaus"
  add_foreign_key "orders", "users"
  add_foreign_key "panier_items", "paniers"
  add_foreign_key "panier_items", "tableaus"
  add_foreign_key "tableaus", "categories"
  add_foreign_key "tableauxes", "categories"
end
