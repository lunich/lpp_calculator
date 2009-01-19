class ChangeEvents < ActiveRecord::Migration
  def self.up
    rename_column :events, :player1_id, :player_id
    rename_column :events, :player2_id, :opponent_id
    rename_column :events, :prev_event1_id, :prev_id
    rename_column :events, :prev_event2_id, :next_id
  end

  def self.down
    rename_column :events, :player_id, :player1_id
    rename_column :events, :opponent_id, :player2_id
    rename_column :events, :prev_id, :prev_event1_id
    rename_column :events, :next_id, :prev_event2_id
  end
end
