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

  def change_to_paid
    @order = Order.find(params[:format])
    toggle_paid(@order)
    redirect_back fallback_location: @order
  end

  def change_to_cancelled
    @order = Order.find(params[:format])
    toggle_cancelled(@order)
    redirect_back fallback_location: @order
  end

  def change_to_completed
    @order = Order.find(params[:format])
    toggle_completed(@order)
    redirect_back fallback_location: @order
  end

  private

  def toggle_paid(order)
    if order.ordered?
      order.paid!
    else
      nil
    end
  end

  def toggle_cancelled(order)
    if order.paid? || order.ordered?
      order.cancelled!
    else
      nil
    end
  end

  def toggle_completed(order)
    if order.paid?
      order.completed!
    else
      nil
    end
  end

end
