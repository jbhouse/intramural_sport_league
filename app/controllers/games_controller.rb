class GamesController < ApplicationController
  def edit
    @game = Game.find(params[:id])
    if @game.completed? && current_user.captain?
      render :edit_result
    else
      render :edit
    end
  end

  def update
    @game = Game.find(params[:id])
    puts game_params
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
end
