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

ActiveRecord::Schema.define(:version => 20081216201902) do

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
    t.decimal "raking", :precision => 8, :scale => 2, :default => 0.0,        :null => false
  end

end
