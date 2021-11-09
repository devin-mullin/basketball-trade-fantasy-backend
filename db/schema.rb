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

ActiveRecord::Schema.define(version: 2021_11_09_180530) do

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "pos"
    t.integer "age"
    t.string "tm"
    t.integer "g"
    t.integer "gs"
    t.float "mp"
    t.float "fg"
    t.float "fga"
    t.float "fgp"
    t.float "thp"
    t.float "thpa"
    t.float "thpp"
    t.float "twp"
    t.float "twpa"
    t.float "twpp"
    t.float "efgp"
    t.float "ft"
    t.float "fta"
    t.float "ftp"
    t.float "orb"
    t.float "drb"
    t.float "trb"
    t.float "ast"
    t.float "stl"
    t.float "blk"
    t.float "tov"
    t.float "pf"
    t.float "pts"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "full_name"
    t.string "abrv"
    t.string "simple_name"
    t.string "location"
  end

end
