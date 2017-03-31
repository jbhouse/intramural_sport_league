module WinningTeamsHelper

  def our_team
    @team ||= Team.find("#{@winning_team.id}")
  end

end
