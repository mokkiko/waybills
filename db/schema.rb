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

ActiveRecord::Schema.define(version: 2022_02_19_084612) do

  create_table "drivers", force: :cascade do |t|
    t.string "driver_name"
    t.string "driver_car"
    t.string "driver_license"
    t.integer "driver_phone"
    t.string "driver_reg_number"
    t.string "driver_category"
    t.string "driver_organization"
    t.string "driver_experience"
    t.string "driver_submission"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
