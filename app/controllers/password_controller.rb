class PasswordController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user
      @user.reset_password
      code = rand(100000...999999).to_s
      @client = Twilio::REST::Client.new ENV['twilio_sid'], ENV['twilio_token']
      @client.messages.create(from: ENV['twilio_phone'], to: user[:phone], body: "Your confirmation code is #{code}")
      redirect_to controller: :password, action: :edit, params: {phone: user[:phone]}
    else
      flash.now[:danger] = 'Email address not found'
      render 'new'
    end
  end

  def edit
    @user = User.find_by(phone: params[:phone])
  end
end
