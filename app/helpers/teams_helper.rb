module TeamsHelper
  def team_games
    @games = Game.all
    # the_team_id = "#{@team.id}"
    team_games = @games.where('away_team_id = 1').or(@games.where('home_team_id = 1'))
    team_games
  end

  # def games_won_by_team
  #   @all_winning_teams = WinningTeam.all
  #   @all_winning_teams.select { |team| team.id == "#{@team.id}" }
  # end

end


# need to include win-loss record
# next opponent
# and macot image (maybe)
