class PlayersController < ApplicationController
  before_action :find_player, only [:show, :edit, :update]

  def index
  end

  def new
  end

  def create
    @player = Player.new(params[:player])
    if @player.save
      redirect_to user_path(@playear)
    else
      @errors = @player.errors.full_messages
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @players.update_attributes(params[:player])
    redirect_to root_url
  end

  private
    def find_player
      @player.find(params[:player_id])

    def player_params
      params.require(:player).permit(:username, :email, :password)
    end
end
