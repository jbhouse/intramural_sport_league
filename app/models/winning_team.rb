class WinningTeam < ApplicationRecord
  before_save :credit_team_with_win
  belongs_to :game
  belongs_to :team

  def credit_team_with_win
    @team = Team.find(team_id)
    p "*" * 100
    p @team
    @team.wins += 1
    p "*" * 100
    p @team
  end

end
