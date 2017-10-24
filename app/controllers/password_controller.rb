class PasswordController < ApplicationController
  # before_action :authenticated?, only: [:update]
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user
      redirect_to controller: :password, action: :edit, params: {phone: @user[:phone]}
    else
      flash.now[:danger] = 'Email address not found'
      render 'new'
    end
  end

  def edit
    @user = User.find_by(phone: params[:phone])
    require "pry"; binding.pry
    @user.reset_password
    redirect_to params: {user: @user}
  end

  def update
    @user = User.find(params[:user])
  end
end

private
    def user_params
      params.require(:user).permit(:reset_digest, :id, :phone, :email)
    end
