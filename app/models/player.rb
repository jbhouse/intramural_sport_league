class Player < ApplicationRecord
  has_many :rsvps
  has_many :roster_entries
  has_many :teams, foreign_key: "captain_id"

  has_secure_password

  def captian?
    Team.all.each do |team|
      return true if self == team.captian
    end
    false
  end
end
