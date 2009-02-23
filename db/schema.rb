# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090223140513) do

  create_table "events", :force => true do |t|
    t.integer  "player_id"
    t.datetime "time"
    t.string   "type"
    t.decimal  "raking",    :precision => 8, :scale => 4
    t.string   "comment"
    t.integer  "parent_id"
  end

  create_table "games", :force => true do |t|
    t.integer  "player1_id"
    t.integer  "player2_id"
    t.integer  "result1"
    t.integer  "result2"
    t.datetime "time"
    t.string   "type"
    t.integer  "parent_id"
  end

  create_table "players", :force => true do |t|
    t.string  "name",                                    :default => "<noname>", :null => false
    t.boolean "active",                                  :default => false,      :null => false
    t.decimal "raking",    :precision => 8, :scale => 4, :default => 0.0,        :null => false
    t.string  "full_name"
  end

  create_table "tournament_participations", :force => true do |t|
    t.integer  "tournament_id"
    t.integer  "player_id"
    t.datetime "time"
    t.integer  "place"
  end

  create_table "tournaments", :force => true do |t|
    t.string   "name"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "total_raking", :precision => 8, :scale => 4
    t.decimal  "coeff",        :precision => 8, :scale => 4
    t.decimal  "raking",       :precision => 8, :scale => 4
    t.boolean  "qualify",                                    :default => false, :null => false
  end

end
