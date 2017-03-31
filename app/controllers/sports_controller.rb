class SportsController < ApplicationController
  def index
    @sports = Sport.all
  end

  def show
    @sport = Sport.find(params[:id])
    @teams = @sport.teams
    @unplayed_game = []
    @played_game = []
    @teams.each do |team|
      team.games.each do |game|
        if game.winning_team_id == nil
          @unplayed_game << game
        else
          @played_game << game
        end
      end
    end
  end

end
