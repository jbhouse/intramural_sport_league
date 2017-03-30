class PlayersController < ApplicationController
  before_action :find_player, only: [:show, :edit, :update]

  def index
  end

  def new
  end

  def create
    @player = Player.new(create_player_params, password_confirmation: params[:players][:password])
    if @player.save
      redirect_to 'sessions#create', email: params[:players][:email], password: params[:players][:password]
    else
      @errors = @player.errors.full_messages
      puts @errors
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
    else
      @errors = @players.errors.full_messages
      render :edit
    end
  end

  private
    def find_player
      @player = Player.find(params[:id])
    end

    def create_player_params
      params.require(:players).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
    def update_player_params
      params.require(:players).permit(:first_name, :last_name)
    end
end
