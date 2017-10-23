class Admin::UsersController < ApplicationController

  before_action :require_admin

  def show
    @stores = current_user.stores
  end
end
