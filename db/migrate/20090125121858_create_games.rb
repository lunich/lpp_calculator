class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.integer :event1_id
      t.integer :event2_id
      t.integer :result1
      t.integer :result2
      t.boolean :qualification
      t.datetime :time
    end
  end

  def self.down
    drop_table :games
  end
end
