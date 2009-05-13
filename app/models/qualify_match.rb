class QualifyMatch < Match
  belongs_to :qualify_game, :foreign_key => "parent_id"

  after_create :check_qualification

private
  def check_qualification
    if self.player.qualify_matches.count == 4
      qm = self.player.qualify_matches.find(:all, :limit => 3, :order => "raking")
      raking = self.player.qualify_matches.sum("raking", :conditions => { "id" => qm.map { |q| q.id } }) / 3
      self.player.qualifications.create({
        :raking => raking,
        :player_id => self.player.id,
        :time => self.time})
    end
  end
end
