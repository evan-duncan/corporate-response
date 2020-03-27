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

ActiveRecord::Schema.define(version: 2020_03_27_015550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "evidences", force: :cascade do |t|
    t.bigint "organization_id", null: false
    t.string "url", null: false
    t.boolean "fabricated", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organization_id"], name: "index_evidences_on_organization_id"
    t.index ["url"], name: "index_evidences_on_url"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name", null: false
    t.string "domain"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_organizations_on_name", unique: true
  end

  add_foreign_key "evidences", "organizations"
end
