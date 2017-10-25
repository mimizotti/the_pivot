class ConfirmationController < ApplicationController
  def edit
    @user = User.find_by(email: params["email"])
    ConfirmationSender.send_confirmation_to(@user)
  end

  def update
    @user = User.find_by(email: params["user"]["email"])
    if @user.confirmation_code == params["user"]["confirmation_code"]
      @user.update(user_params)
      session[:user_id] = @user.id
      session[:logged_in?] = true
      redirect_to dashboard_path
    else
      flash[:error] = "Incorrect confirmation code. Please re-enter."
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:password)
  end
end
