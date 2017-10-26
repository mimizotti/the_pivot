class Admin::OrderItemsController < ApplicationController
  def update
    order_item = OrderItem.find(params["id"])
    if params["status"] == "paid"
      order_item.update_columns(status: "paid")
    elsif params["status"] == "completed"
      order_item.update_columns(status: "completed")
    else
      order_item.update_columns(status: "cancelled")
    end
    redirect_back(fallback_location: root_path)
  end
end
