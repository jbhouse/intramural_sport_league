class Player < ApplicationRecord
  has_many :rsvps, :rosters
  has_many :teams, foreign_key: :captain_id
end
