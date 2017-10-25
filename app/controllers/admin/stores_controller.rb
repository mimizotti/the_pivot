class Admin::StoresController < ApplicationController

  before_action :require_admin

  def show
    @store = Store.find(params["id"])
    @store_orders = OrderItem.store_orders(@store)
  end

  def edit
    @store = Store.find(params["id"])
  end

  def update
    @store = Store.find(params["id"])
    @store.update(store_params)

    redirect_to admin_store_path(@store)
  end

  private

  def store_params
    params.require(:store).permit(:name, :description, :image)
  end
end
