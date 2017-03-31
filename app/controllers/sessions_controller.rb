class SessionsController < ApplicationController
  def new
    flash.now[:just_reg]
  end

  def create
    @user = Player.find_by(email: sessions_params[:email])
    puts params
    puts @user.authenticate(sessions_params[:password])
    if @user && @user.authenticate(sessions_params[:password])
      session[:user_id] = @user.id
      puts session[:user_id]
      redirect_to player_path(@user)
    else
      @errors = ["Invalid Username or Password"]
      puts @errors
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
  private
    def sessions_params
      params.require(:session).permit(:email, :password)
    end
end
