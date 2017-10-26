class Admin::PendingStoresController < ApplicationController
  def index
    @pending_stores = Store.where(status: "pending").decorate
  end

  def show
    @pending_store = Store.find(params[:id])
  end

  def update
    pending_store = Store.find(params[:id])
    if params[:status] == "approved"
      pending_store.update_columns(status: 0)
    else params[:status] == "rejected"
      pending_store.update_columns(status: 3)
    end

    redirect_to admin_pending_stores_path
  end
end
