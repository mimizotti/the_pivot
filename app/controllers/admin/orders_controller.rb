class Admin::OrdersController < ApplicationController
  before_action :require_admin

  def index
    @store = Store.find(params["id"])
    @store_orders = OrderItem.includes(:item, order: :user).store_orders(@store)
    @paginated_orders = @store_orders.paginate(:page => params[:page], :per_page => 50)
  end

  def ordered

    @orders = Order.ordered.paginate(:page => params[:page], :per_page => 50)
    # @paginated_orders = @store_orders.paginate(:page => params[:page], :per_page => 50)
    #
    # @orders = @paginated_orders.paginate(:page => params[:page], :per_page => 50)
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

  private

  def set_page
    @page = params[:page] || 0
  end
end
