class CartsController < ApplicationController
  include ActionView::Helpers::TextHelper

  def create
    item = Item.find(params[:item_id])

    @cart.add_item(item.id)
    session[:cart] = @cart.contents

    flash[:notice] = "You now have #{pluralize(@cart.count_of(item.id), item.categories.first.name.singularize)}"
    redirect_back(fallback_location: root_path)
  end

  def show
    @cart = Cart.new(session[:cart])
    @items = Item.find(@cart.contents.keys)
  end

  def destroy
    # require 'pry', binding.pry
    # item = Item.find(session[:cart].select{|k,v|k = :id}.keys)[0]
    item = Item.find(params[:format])
    @cart.contents.delete(params[:format])
    flash[:successfully_removed] = "Successfully removed <a href=#{item_path(item)}>#{item.title}</a> from your cart."

    redirect_to cart_path
  end

  def update
    if params[:item_to_increase]
      @cart.increase_item(params[:item_to_increase])
    elsif params[:item_to_decrease]
      @cart.decrease_item(params[:item_to_decrease])
    end
    redirect_to cart_path
  end




end
