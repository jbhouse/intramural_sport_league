class Game < ApplicationRecord
  belongs_to :home_team, class_name: Team
  belongs_to :away_team, class_name: Team
  belongs_to :winning_team, class_name: Team
  has_many :rsvps
  has_many :players, through: :rsvps
end
