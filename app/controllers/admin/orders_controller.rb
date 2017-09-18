class Admin::OrdersController < ApplicationController

  before_action :require_admin

  def show
    @orders = Order.all
  end

end
