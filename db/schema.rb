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

ActiveRecord::Schema.define(version: 2021_09_13_154242) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.integer "order_track_id"
    t.text "sender_full_name"
    t.text "sender_email"
    t.text "sender_address"
    t.text "sender_mobile"
    t.text "sender_pincode"
    t.text "receiver_full_name"
    t.text "receiver_email"
    t.text "receiver_address"
    t.text "receiver_mobile"
    t.text "receiver_pincode"
    t.decimal "parcel_weight"
    t.integer "type_of_service"
    t.decimal "cost_of_service"
    t.integer "payment_mode"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
