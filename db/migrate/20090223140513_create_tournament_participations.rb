class CreateTournamentParticipations < ActiveRecord::Migration
  def self.up
    create_table :tournament_participations do |t|
      t.integer :tournament_id
      t.integer :player_id
      t.datetime :time
      t.integer :place
    end
  end

  def self.down
    drop_table :tournament_participations
  end
end
