class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :is_admin?
  helper_method :logged_in?
  before_action :set_cart
  helper_method :require_admin
  helper_method :current_admin?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def set_cart
    @cart ||= Cart.new(session[:cart])
  end

  def logged_in?
    current_user != nil
  end

  def is_admin?
    current_user.platform_admin == true || current_user.roles == "Business Admin" || current_user.roles == "Business Manager"
  end

  def require_admin
    render file: "/public/404" unless current_user.is_admin?
  end

end
