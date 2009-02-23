class ChangeGames < ActiveRecord::Migration
  def self.up
    rename_column :games, :event1_id, :player1_id
    rename_column :games, :event2_id, :player2_id
    remove_column :games, :qualification
    add_column :games, :type, :string
    add_column :games, :parent_id, :integer
  end

  def self.down
    remove_column :games, :parent_id
    remove_column :games, :type
    add_column :games, :qualification, :boolean
    rename_column :games, :player2_id, :event2_id
    rename_column :games, :player1_id, :event1_id
  end
end
