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

ActiveRecord::Schema.define(version: 2020_03_10_172316) do

  create_table "battle_players", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "battle_id", null: false
    t.datetime "battle_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["battle_id"], name: "index_battle_players_on_battle_id"
    t.index ["player_id"], name: "index_battle_players_on_player_id"
  end

  create_table "battles", force: :cascade do |t|
    t.integer "battle_id"
    t.string "type"
    t.string "deck_selection"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cards", force: :cascade do |t|
    t.integer "player_id", null: false
    t.string "name"
    t.integer "card_id"
    t.string "icon_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_cards_on_player_id"
  end

  create_table "clans", force: :cascade do |t|
    t.string "tag"
    t.string "name"
    t.integer "player_id", null: false
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_clans_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "tag"
    t.integer "clan_id", null: false
    t.string "role"
    t.integer "wins"
    t.integer "losses"
    t.integer "total_donations"
    t.string "current_deck"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clan_id"], name: "index_players_on_clan_id"
  end

  add_foreign_key "battle_players", "battles"
  add_foreign_key "battle_players", "players"
  add_foreign_key "cards", "players"
  add_foreign_key "clans", "players"
  add_foreign_key "players", "clans"
end
