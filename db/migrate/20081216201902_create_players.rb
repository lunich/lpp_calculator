class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :name, :null => false, :default => "<noname>"
      t.boolean :active, :null => false, :default => false
      t.decimal :raking, :precision => 8, :scale => 4, :null => false, :default => 0
    end
  end

  def self.down
    drop_table :players
  end
end
