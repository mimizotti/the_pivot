class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :logged_in?
  before_action :set_cart

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def set_cart
    @cart ||= Cart.new(session[:cart])
  end

  def logged_in?
    current_user != nil
  end

  def require_admin
    render file: "/public/404" unless current_admin?
  end

  def current_admin?
    current_user && current_user.admin?
  end
end
