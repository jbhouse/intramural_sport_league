class Team < ApplicationRecord
  has_many :games
  has_many :roster_entries
  has_many :rsvps
  has_many :players, through: :rsvps
  has_many :victories, as: :winning_teams
  belongs_to :captain, class_name: "Player"
  belongs_to :sport
end
