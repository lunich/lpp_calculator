class Game < ActiveRecord::Base
  belongs_to :player1, :class_name => "Player"
  belongs_to :player2, :class_name => "Player"

  has_one :match1, :class_name => "Match", :foreign_key => "parent_id",
    :conditions => ["events.player_id=games.player1_id"],
    :include => "game",
    :dependent => :destroy
  has_one :match2, :class_name => "Match", :foreign_key => "parent_id",
    :conditions => ["events.player_id=games.player2_id"],
    :include => "game",
    :dependent => :destroy

  validates_presence_of :result1
  validates_presence_of :result2
  validates_presence_of :player1_id
  validates_presence_of :player2_id
  validates_presence_of :time

  validates_associated :match1, :match2

  before_validation_on_create :build_matches

  attr_accessor :raking1
  attr_accessor :raking2
  cattr_reader :import_errors

  def winner?(player)
    ((result1 > result2)&&(player1 == player))||((result1 < result2)&&(player2 == player))
  end

  def loser?(player)
    ((result1 < result2)&&(player1 == player))||((result1 > result2)&&(player2 == player))
  end

  def draw?
    result1 == result2
  end

  def self.import(file, klass = Game)
    @@import_errors = []
    hashed_dates = {}
    begin
      klass.transaction do
        file.readlines.each do |line|
          if(klass == QualifyGame)
            date_str, p1_str, r1_str, p2_str, r2_str, res1_str, res2_str, q_str = line.strip.split(";")
          else
            date_str, p1_str, r1_str, p2_str, r2_str, res1_str, res2_str = line.strip.split(";")
          end
          p1 = Player.find_by_name(p1_str)
          if(p1.nil?)
            raise Exception.new("Can't create game for player #{p1_str} (date: #{date_str})")
          else
            p2 = Player.find_by_name(p2_str)
            if(p2.nil?)
              raise Exception.new("Can't create game for player #{p2_str} (date: #{date_str})")
            else
              h = hashed_dates.has_key?(date_str) ? (hashed_dates[date_str] += 1) : (hashed_dates[date_str] = 12)
              d, m, y = date_str.split(".")
              date = Time.gm(y, m, d, h)
              params = {
                :player1_id => p1.id, :player2_id => p2.id,
                :raking1 => r1_str.to_f, :raking2 => r2_str.to_f,
                :result1 => res1_str, :result2 => res2_str,
                :time => date
              }
              params.merge!(:qualifier => q_str.to_i) if(klass == QualifyGame)
              puts params.inspect
              unless klass.create(params)
                raise Exception.new("Can't create game for players #{p1_str} and #{p2_str} (date: #{date_str})")
              end
            end
          end
        end
      end
      true
    rescue Exception => e
      @@import_errors << e.to_s
      false
    end
  end

protected
  def build_matches
    self.match1 = Match.new(
      :player_id => self.player1_id,
      :time => self.time,
      :raking => self.raking1
    )
    self.match2 = Match.new(
      :player_id => self.player2_id,
      :time => self.time,
      :raking => self.raking2
    )
    true
  end
end
