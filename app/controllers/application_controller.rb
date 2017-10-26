class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :logged_in?
  before_action :set_cart
  helper_method :require_admin
  helper_method :current_admin?
  helper_method :platform_admin?

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
    render file: "/public/404" unless current_user && current_user.is_admin?
  end

  def platform_admin?
    current_user.platform_admin == true
  end

  def business_admin?
    current_user.roles.where("Business Admin").any?
  end

end
