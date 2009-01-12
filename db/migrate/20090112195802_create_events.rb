class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :player1_id
      t.integer :player2_id
      t.integer :result1
      t.integer :result2
      t.datetime :time
      t.string :type
      t.integer :qualify
      t.decimal :raking1, :precision => 8, :scale => 4
      t.decimal :raking2, :precision => 8, :scale => 4
      t.integer :prev_event1_id
      t.integer :prev_event2_id
      t.string :comment
      t.integer :tournament_id
      t.integer :tournament_place

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
