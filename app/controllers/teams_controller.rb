class TeamsController < ApplicationController

  def index
  end

  def new
  end

  def create

  end

  def show
    @team = Team.find(params[:id])
    @roster = @team.roster_entries
  end

  def edit
  end

  def update

  end
end
