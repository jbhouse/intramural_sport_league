class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    if @user = User.authenticate(params[:username], params[:password])
      session[:user_id] = @user.id
      redirect_to root_url
    else
      @errors = ["Invalid Username or Password"]
      render :edit
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
