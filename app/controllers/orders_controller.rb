class OrdersController < ApplicationController
  def index
    @orders = current_user.orders
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
		order = Order.create(status: "ordered", user_id: current_user.id)
		item_hash = @cart.item_and_quantity
		order.add(item_hash)
		@cart.destroy
		flash[:success] = "Congratulations on your successful underwater basketweaving purchase!"
		redirect_to orders_path
	end
end
