class OrdersController < ApplicationController
  def index
    @orders = current_user.orders
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
    unless session[:user_id] == @order.user_id || current_admin?
      flash[:notice] = "You don't have access to that order!"
      redirect_to dashboard_path(session[:user_id])
      return
    end
  end

  def new
		order = Order.create(status: 0, user_id: current_user.id, total_price: @cart.cart_total)
		item_hash = @cart.order_hash
		order.add(item_hash)
		@cart.destroy
		flash[:success] = "Order was successfully placed"
		redirect_to orders_path
	end

end
