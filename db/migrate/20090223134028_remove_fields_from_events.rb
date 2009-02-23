class RemoveFieldsFromEvents < ActiveRecord::Migration
  def self.up
    remove_column :events, :opponent_id
    remove_column :events, :result1
    remove_column :events, :result2
    remove_column :events, :qualify
    remove_column :events, :prev_id
    remove_column :events, :next_id
    remove_column :events, :tournament_id
    remove_column :events, :tournament_place
    remove_column :events, :created_at
    remove_column :events, :updated_at
  end

  def self.down
    add_column :events, :opponent_id, :integer
    add_column :events, :result1, :integer
    add_column :events, :result2, :integer
    add_column :events, :qualify, :boolean
    add_column :events, :prev_id, :integer
    add_column :events, :next_id, :integer
    add_column :events, :tournament_id, :integer
    add_column :events, :tournament_place, :integer
    add_column :events, :created_at, :datetime
    add_column :events, :updated_at, :datetime
  end
end
