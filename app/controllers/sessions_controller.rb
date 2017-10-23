class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    # binding.pry
    if request.env['omniauth.auth'].present?
      @user = User.find_or_create_from_auth(request.env['omniauth.auth'])
      set_session_id
    else
      native_login
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  def native_login
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password]) && @user.is_admin?
      session[:user_id] = @user.id
      session[:logged_in?] = true
      redirect_to admin_dashboard_path
    elsif @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      session[:logged_in?] = true
      redirect_to dashboard_path
    else
      flash[:cannot_login] = "You have entered an incorrect username or password."
      redirect_to login_path
    end
  end

  def set_session_id
    if @user
      session[:user_id] = @user.id
      session[:logged_in?] = true
      redirect_to items_path
    end
  end

end
