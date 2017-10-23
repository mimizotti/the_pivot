class Admin::StoresController < ApplicationController

  before_action :require_admin

  def show
    @store = Store.find(params["id"])
    @orders = OrderItem.store_orders(@store)
  end
end
