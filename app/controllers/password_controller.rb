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
    @user.reset_password
    require "pry"; binding.pry
    redirect_to controller: :password, action: :update, params: {user: @user}
  end

  def update
    @user = User.find(params[:user])
  end
end
