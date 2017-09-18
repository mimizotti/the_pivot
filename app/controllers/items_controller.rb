class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def retire_item
    @item = Item.find(params[:format])
    toggle_status(@item)
    redirect_back fallback_location: @item
  end

  private

  def toggle_status(item)
    if item.active?
      item.retired!
    else
      item.active!
    end
  end
end
