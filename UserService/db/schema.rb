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

ActiveRecord::Schema.define(version: 2017_06_27_160121) do

  create_table "user", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password"
    t.string "phone", limit: 50
    t.integer "enabled", limit: 2, default: 1
    t.integer "status", limit: 2, default: 1
    t.timestamp "created_ts", default: -> { "CURRENT_TIMESTAMP" }
    t.timestamp "modified_ts", default: -> { "CURRENT_TIMESTAMP" }
    t.index ["email"], name: "email", unique: true
  end

  create_table "users", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password"
    t.string "phone", limit: 50
    t.integer "enabled", limit: 2, default: 1
    t.integer "status", limit: 2, default: 1
    t.timestamp "created_ts", default: -> { "CURRENT_TIMESTAMP" }
    t.timestamp "modified_ts", default: -> { "CURRENT_TIMESTAMP" }
    t.index ["email"], name: "email", unique: true
  end

end
