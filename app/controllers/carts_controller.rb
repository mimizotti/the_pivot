class CartsController < ApplicationController
  include ActionView::Helpers::TextHelper

  def create
    item = Item.find(params[:item_id])

    @cart.add_item(item.id)
    session[:cart] = @cart.contents

    flash[:notice] = "You now have #{pluralize(@cart.count_of(item.id), item.title)}"
    redirect_back(fallback_location: root_path)
  end

  def show
    @cart = Cart.new(session[:cart])
    @items = Item.find(@cart.contents.keys)
  end


end
