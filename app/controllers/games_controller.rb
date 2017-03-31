class GamesController < ApplicationController
  def edit
    @game = Game.find(params[:id])
    if @game.finished?
      render :edit_result
    else
      render :edit
    end
  end

  def update

  end

end
