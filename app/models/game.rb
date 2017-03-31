class Game < ApplicationRecord
  belongs_to :home_team, class_name: "Team"
  belongs_to :away_team, class_name: "Team"
  has_one :winning_team
  has_one :winner, through: :winning_team, source: :team
  has_many :rsvps
  has_many :players, through: :rsvps

  def full_datetime
    return self.date + " " + self.time
  end

  def completed?
    if DateTime.strptime(self.full_datetime, '%Y-%m-%d %H:%M') < Time.now
      return true
    else
      return false
    end
  end
end


