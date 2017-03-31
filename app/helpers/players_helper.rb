module PlayersHelper
  def user_games
    games_array = []
    @user_rsvps = Rsvp.where(player_id: "#{@player.id}")
    @user_rsvps.each do |rsvp|
      games_array << rsvp.game
    end
    games_array
  end

  def user_teams
    teams_array = []
    @user_entry = RosterEntry.where(player_id: "#{@player.id}")
    @user_entry.each do |entry|
      teams_array << entry.team
    end
    teams_array
  end

  def games_won
  game_winning_teams = []
  users_game_winning_teams = []
  @winning_teams = WinningTeam.all

    user_teams.each do |team|
      teamid = team.id
      @winning_teams.each do |this_team|
        if this_team.team_id == teamid
          users_game_winning_teams << this_team
        end
      end
    end
    user_games.each do |game|
      gameid = game.id
      users_game_winning_teams.each do |a_team|
        if a_team.id == gameid
          game_winning_teams << a_team
        end
      end
    end
    game_winning_teams
  end
  # we need to tell our client about the new league
  # rule. you can't be a sub on a team that is playing against
  # your team

  def player_win_percentage
    (games_won/user_games)
  end
end
