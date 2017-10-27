class UsersController < ApplicationController
  # before_action :require_login, except: [:new, :create, :edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      session[:logged_in?] = true
      redirect_to dashboard_path
    else
      redirect_to login_path
    end
  end

  def show
  end

  def edit
  end

  def update
    if current_user.save
      current_user.update(user_params)
      if current_user.is_admin?
        redirect_to admin_dashboard_path
      else
        redirect_to dashboard_path
      end
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :email, :address, :password)
    end

    def require_login
      unless session[:logged_in?]
        flash[:error] = "You must be logged in to view this content"
        redirect_to login_path
      end
    end
end
