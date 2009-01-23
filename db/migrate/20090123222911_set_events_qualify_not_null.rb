class SetEventsQualifyNotNull < ActiveRecord::Migration
  def self.up
    change_column :events, :qualify, :boolean, :null => false, :default => false
  end

  def self.down
    change_column :events, :qualify, :integer, :null => true, :default => nil
  end
end
