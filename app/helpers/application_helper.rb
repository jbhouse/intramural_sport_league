module ApplicationHelper
  def user_games
    @player_games = Game.players.where(user_id: "#{@player.id}")
  end
end
