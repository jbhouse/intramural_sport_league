class Player < ApplicationRecord
  has_many :rsvps
  has_many :roster_entries
  has_many :teams, foreign_key: "captain_id"
end
