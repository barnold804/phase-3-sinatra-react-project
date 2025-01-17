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

ActiveRecord::Schema.define(version: 2022_03_28_205251) do

  create_table "adopters", force: :cascade do |t|
    t.string "adopter_name"
    t.string "email"
    t.string "adopter_phone"
  end

  create_table "animals", force: :cascade do |t|
    t.string "animal_name"
    t.string "breed"
    t.integer "age"
    t.integer "shelter_id"
    t.string "image"
    t.string "animal_type"
  end

  create_table "comments", force: :cascade do |t|
    t.string "comments"
    t.integer "animal_id"
    t.integer "adopter_id"
  end

  create_table "shelters", force: :cascade do |t|
    t.string "shelter_name"
    t.string "shelter_address"
    t.string "shelter_phone"
  end

end
