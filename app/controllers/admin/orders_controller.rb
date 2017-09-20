class Admin::OrdersController < ApplicationController
  before_action :require_admin

  def show
    @orders = Order.all
  end

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
