class Team < ApplicationRecord
  has_many :games, foreign_key: "home_team_id"
  has_many :games, foreign_key: "away_team_id"
  has_many :roster_entries
  has_many :rsvps
  has_many :players, through: :rsvps
  has_many :victories, as: :winning_teams
  belongs_to :captain, class_name: "Player"
  belongs_to :sport

  def find_opponent(game)
    if game.home_team == self
      return game.away_team
    else
      game.home_team
    end
  end

end
