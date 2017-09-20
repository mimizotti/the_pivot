class Admin::ItemsController < ApplicationController

  before_action :require_admin

  def index
    @items = Item.all
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)

    redirect_to 'admin/items'
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :image, :status)
  end
end