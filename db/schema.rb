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

ActiveRecord::Schema.define(:version => 20090113093850) do

  create_table "events", :force => true do |t|
    t.integer  "player1_id"
    t.integer  "player2_id"
    t.integer  "result1"
    t.integer  "result2"
    t.datetime "time"
    t.string   "type"
    t.integer  "qualify"
    t.decimal  "raking1",          :precision => 8, :scale => 4
    t.decimal  "raking2",          :precision => 8, :scale => 4
    t.integer  "prev_event1_id"
    t.integer  "prev_event2_id"
    t.string   "comment"
    t.integer  "tournament_id"
    t.integer  "tournament_place"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lpp_matches", :force => true do |t|
    t.datetime "time",                                        :null => false
    t.integer  "player1",                    :default => 0,   :null => false
    t.integer  "player2",                    :default => 0,   :null => false
    t.integer  "res1",                       :default => 0,   :null => false
    t.integer  "res2",                       :default => 0,   :null => false
    t.float    "raking",        :limit => 8, :default => 0.0, :null => false
    t.integer  "qualification",              :default => 0,   :null => false
  end

  create_table "lpp_players", :force => true do |t|
    t.string  "name",  :default => "", :null => false
    t.integer "rated", :default => 1,  :null => false
  end

  create_table "lpp_players_tournaments", :id => false, :force => true do |t|
    t.integer "player_id",                  :default => 0,   :null => false
    t.integer "tournament_id",              :default => 0,   :null => false
    t.integer "place",         :limit => 3, :default => 0,   :null => false
    t.float   "raking",        :limit => 8, :default => 0.0, :null => false
  end

  create_table "lpp_tournaments", :force => true do |t|
    t.string   "name",  :default => "", :null => false
    t.datetime "start",                 :null => false
    t.datetime "fin"
  end

  create_table "players", :force => true do |t|
    t.string  "name",                                 :default => "<noname>", :null => false
    t.boolean "active",                               :default => false,      :null => false
    t.decimal "raking", :precision => 8, :scale => 4, :default => 0.0,        :null => false
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
  end

end
