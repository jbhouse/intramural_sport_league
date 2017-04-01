class TeamsController < ApplicationController

  def index
  end

  def new
    @team = Team.new
    @sport = Sport.find(params[:sport_id])
  end

  def create
    @sport = Sport.find(params[:sport_id])
    @team = Team.new(create_team_params)
    @team.captain_id = current_user.id
    @team.sport_id = @sport.id
    if @team.save
      redirect_to team_path(@team)
    else
      @errors = @team.errors.full_messages
      puts @errors
      render :new
    end
  end

  def show
    @team = Team.find(params[:id])
    @games = @team.games
    @these_games = @games.sort_by { |game| game.date }
    @these_games.each do |game|
      return @nextgame = game if !game.completed?
    end
  end

  def edit
  end

  def update

  end

  private
    def create_team_params
       params.require(:team).permit(:name, :mascot_url)
    end
end
