class Admin::OrdersController < ApplicationController
  before_action :require_admin

  def index
    @store = Store.find(params["id"])
    @store_orders = OrderItem.includes(:item, order: :user).store_orders(@store)
    @paginated_orders = @store_orders.paginate(:page => params[:page], :per_page => 50)
  end

  def ordered
    @orders = Order.ordered.paginate(:page => params[:page], :per_page => 50)
  end

  def paid
    @orders = Order.paid.paginate(:page => params[:page], :per_page => 50)
  end

  def completed
    @orders = Order.completed.paginate(:page => params[:page], :per_page => 50)
  end

  def cancelled
    @orders = Order.cancelled.paginate(:page => params[:page], :per_page => 50)
  end

  private

  def set_page
    @page = params[:page] || 0
  end
end
