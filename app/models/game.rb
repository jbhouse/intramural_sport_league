class Game < ApplicationRecord
  has_one :home_team, class_name: "Team"
  has_one :away_team, class_name: "Team"
  has_one :winning_team, class_name: "Team"
  has_many :rsvps
  has_many :players, through: :rsvps
end
