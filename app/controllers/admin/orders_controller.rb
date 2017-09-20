class Admin::OrdersController < ApplicationController

  before_action :require_admin

  def ordered
    @orders = Order.ordered
  end

  def paid
    @orders = Order.paid
  end

  def completed
    @orders = Order.completed
  end

  def cancelled
    @orders = Order.cancelled
  end

end
