class Team < ApplicationRecord
  has_many :games, :rsvps, :rosters
  has_many :players, through: :rsvps
  belongs_to :captain, class_name: Player
  belongs_to :sport
end
