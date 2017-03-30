class PlayersController < ApplicationController
  before_action :find_player, only: [:show, :edit, :update]

  def index
  end

  def new
  end

  def create
    @player = Player.new(create_player_params)
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
    if @players.update_attributes(update_player_params)

    redirect_to root_url
  end

  private
    def find_player
      @player.find(params[:player_id])
    end

    def create_player_params
      params.require(:player).permit(:first_name, :last_name, :email, :password)
    end
    def update_player_params
      params.require(:player).permit(:first_name, :last_name)
    end
end
