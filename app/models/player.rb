class Player < ApplicationRecord
  has_many :rsvps
  has_many :roster_entries
  has_many :teams, foreign_key: "captain_id"

  # def password
  #   @password ||= Password.new(password_digest)
  # end

  # def password=(new_password)
  #   @password = Password.create(new_password)
  #   self.password_digest = @password
  # end

  # def authenticate(input_password)
  #   return self if self.password = input_password
  # end

  has_secure_password

  def captian?
    Team.all.each do |team|
      return true if self == team.captian
    end
    false
  end

end
