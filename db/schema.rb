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

ActiveRecord::Schema.define(version: 20180103132351) do

  create_table "asociations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "municipio_id"
    t.integer "region_id"
  end

  create_table "municipios", force: :cascade do |t|
    t.integer "codigo"
    t.string "nombre"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "municipios_regiones", id: false, force: :cascade do |t|
    t.integer "region_id", null: false
    t.integer "municipio_id", null: false
    t.index ["municipio_id", "region_id"], name: "index_municipios_regiones_on_municipio_id_and_region_id"
    t.index ["region_id", "municipio_id"], name: "index_municipios_regiones_on_region_id_and_municipio_id"
  end

  create_table "regiones", force: :cascade do |t|
    t.integer "codigo"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
