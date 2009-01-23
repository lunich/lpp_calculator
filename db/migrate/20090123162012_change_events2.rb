class ChangeEvents2 < ActiveRecord::Migration
  def self.up
    remove_column :events, :raking2
    rename_column :events, :raking1, :raking
  end

  def self.down
    rename_column :events, :raking, :raking1
    add_column :events, :raking2, :decimal, :precision => 8, :scale => 4
  end
end
