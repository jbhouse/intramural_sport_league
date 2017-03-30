class Team < ApplicationRecord
  has_many :games
  has_many :roster_entries
  has_many :rsvps
  has_many :players, through: :rsvps
  belongs_to :captain, class_name: "Player"
  belongs_to :sport
end
