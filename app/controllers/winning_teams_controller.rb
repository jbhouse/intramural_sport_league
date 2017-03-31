class WinningTeamsController < ApplicationController

  def new
    @game = Game.find(params[:game_id])
  end

  def create
    @game = Game.find(params[:game_id])
    @team = Team.find_by(winning_team_params)
    @winning_team = WinningTeam.new(team_id: @team.id, game_id: @game.id)
    if @winning_team.save
      redirect_to game_path(@game)
    else
      @errors = @winning_team.errors.full_messages
      render :new
    end
  end
  private
    def winning_team_params
      params.require(:winning_team).permit(:name)
    end
end
