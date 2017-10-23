class Admin::StoresController < ApplicationController

  before_action :require_admin

  def show
    @store = Store.find(params["id"])
    @store_orders = OrderItem.store_orders(@store)
  end
end
