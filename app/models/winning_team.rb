class WinningTeam < ApplicationRecord
  before_save :credit_team_with_win
  belongs_to :game
  belongs_to :team

  def credit_team_with_win
    self.team.wins += 1
    self.team.save
  end

end
