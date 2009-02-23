class AddFullNameToPlayers < ActiveRecord::Migration
  def self.up
    add_column :players, :full_name, :string
  end

  def self.down
    remove_column :players, :full_name
  end
end
