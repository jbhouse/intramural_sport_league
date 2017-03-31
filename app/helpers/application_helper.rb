module ApplicationHelper
  # def user_games
  #   player_games = []
  #   players = []
  #   @games = Game.all
  #   @games.each do |game|
  #     players << game.players
  #
  #
  #   @player_games = Game.players.find("#{@player.id}")
  # end

  def user_teams
    @player_teams = Team.roster_entries.where(player_id: "#{@player.id}")
  end

  def on_winning_team

  end

  def games_won
    # @games_won = user_games.where(winning_team_id: '')
    # where the winning_team_id == the id of the team the player was on (for that game)
  end

  def games_lost

  end

  def win_percentage
    # (games_won/games_lost)
  end

end
