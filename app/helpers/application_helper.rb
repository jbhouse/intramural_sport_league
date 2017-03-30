module ApplicationHelper
  def user_games
    @player_games = Game.rsvps.where(player_id: "#{@player.id}")
  end

  def user_teams
    @player_teams = Team.roster_entries.where(player_id: "#{@player.id}")
  end
end
