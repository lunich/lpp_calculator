class AddFieldsToTournaments < ActiveRecord::Migration
  def self.up
    add_column :tournaments, :total_raking, :decimal, :precision => 8, :scale => 4
    add_column :tournaments, :coeff, :decimal, :precision => 8, :scale => 4
    add_column :tournaments, :raking, :decimal, :precision => 8, :scale => 4
  end

  def self.down
    remove_column :tournaments, :total_raking
    remove_column :tournaments, :coeff
    remove_column :tournaments, :raking
  end
end
