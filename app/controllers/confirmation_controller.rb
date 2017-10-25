class ConfirmationController < ApplicationController
  def edit
    @user = User.find_by(email: params["email"])
  end
end
