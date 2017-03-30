class SessionsController < ApplicationController
  def new
  end

  def create
    @user = Player.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_url
    else
      @errors = ["Invalid Username or Password"]
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
