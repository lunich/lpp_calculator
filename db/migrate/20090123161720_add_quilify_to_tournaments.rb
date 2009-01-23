class AddQuilifyToTournaments < ActiveRecord::Migration
  def self.up
    add_column :tournaments, :qualify, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column :tournaments, :qualify
  end
end
