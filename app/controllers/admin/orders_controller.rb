class Admin::OrdersController < ApplicationController
  before_action :require_admin

  def index
    @store = Store.find(params["id"])
    @store_orders = OrderItem.includes(:item, order: :user).store_orders(@store)
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
