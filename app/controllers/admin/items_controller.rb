class Admin::ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update]
  before_action :require_admin

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_attributes)
    if @item.save
      redirect_to item_path(@item)
    else
      flash[:danger] = 'Invalid information entered, try again'
      render :new
    end
  end

  def show
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)

    redirect_to admin_items_path
  end

  private


  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :description, :image, :status)
  end

  def item_attributes
    params.require(:item).permit(:title, :description, :price, :image, :status, category_ids: [])
  end
end
