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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_10_25_113545) do
=======
ActiveRecord::Schema.define(version: 2018_10_16_122907) do
>>>>>>> refs/remotes/origin/master

  create_table "brands", force: :cascade do |t|
    t.string "name", limit: 15
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", limit: 50
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "name", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

=======
>>>>>>> refs/remotes/origin/master
  create_table "displays", force: :cascade do |t|
    t.string "name", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "seller_id"
    t.integer "seller_product_variant_id"
    t.decimal "price"
    t.decimal "discount"
    t.decimal "final_price"
    t.integer "product_variant_id"
    t.string "address", limit: 500
    t.string "city", limit: 100
    t.string "state", limit: 100
    t.string "pincode", limit: 6
    t.datetime "ordered_date"
    t.datetime "shipping_date"
    t.datetime "cancle_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "processors", force: :cascade do |t|
    t.string "name", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_variants", force: :cascade do |t|
    t.integer "product_id"
    t.integer "storage_id"
    t.integer "color_id"
    t.integer "ram_id"
    t.integer "display_id"
    t.integer "processore_id"
    t.decimal "price"
    t.integer "width", limit: 5
    t.integer "height", limit: 5
    t.integer "thickness", limit: 5
    t.integer "weight", limit: 5
    t.integer "front_camera", limit: 10
    t.integer "rear_camera", limit: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productcategory", force: :cascade do |t|
    t.integer "product_id"
    t.integer "category_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "description"
    t.boolean "available"
    t.datetime "release_year"
    t.integer "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "replies", force: :cascade do |t|
    t.integer "comment_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_replies_on_comment_id"
  end

=======
>>>>>>> refs/remotes/origin/master
  create_table "seller_product_variants", force: :cascade do |t|
    t.integer "seller_id"
    t.integer "product_variant_id"
    t.decimal "price"
    t.decimal "discount"
    t.decimal "final_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sellerproduct", force: :cascade do |t|
    t.integer "seller_id"
    t.integer "product_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "contactno", limit: 15
    t.string "address", limit: 500
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "storages", force: :cascade do |t|
    t.string "name", limit: 30
    t.boolean "ram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "contactno", limit: 15
    t.string "address", limit: 500
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
