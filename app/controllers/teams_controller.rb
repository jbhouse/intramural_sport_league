class TeamsController < ApplicationController

  def index
  end

  def new
  end

  def create

  end

  def show
    @team = Team.find(params[:id])
    @players = @team.players
  end

  def edit
  end

  def update

  end
end
