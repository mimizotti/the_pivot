class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password]) && user.admin?
      session[:user_id] = user.id
      session[:logged_in?] = true
      redirect_to admin_dashboard_path
    elsif user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      session[:logged_in?] = true
      redirect_to dashboard_path
    else
      flash[:cannot_login] = "You have entered an incorrect username or password."
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
