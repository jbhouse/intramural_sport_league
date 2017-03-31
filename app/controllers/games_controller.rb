class GamesController < ApplicationController
  before_action :find_game, only: [:show, :edit, :update]
  def edit
    if @game.completed? && current_user.captain?
      render :edit_result
    else
      render :edit
    end
  end

  def update
    if @game.save
      redirect root_url
    else
      @errors = @game.errors.full_messages
        render :edit
    end
  end

  def show
  end

  private
    def game_params
      params.require(:game).permit(:home_team_name, :away_team_name, :location, :date, :time)
    end

    def find_game
      @game = Game.find(params[:id])
    end
end
