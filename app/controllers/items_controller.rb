class ItemsController < ApplicationController

  def index
    @items = Item.paginate(:page => params[:page], :per_page => 10)
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

  def set_page
    @page = params[:page] || 0
  end
end
