class Admin::OrdersController < ApplicationController

  before_action :require_admin

  def show
    binding.pry
    @order = Order.find(params[:status])
  end

end
