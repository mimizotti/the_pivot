class Admin::ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update]
  before_action :require_admin

  def index
    @store = Store.find(params["store_id"])
    @items = @store.items
  end

  def new
    @store = Store.find(params["store_id"])
    @item = Item.new
  end

  def create
    @store = Store.find(params["store_id"])
    @item = Item.new(item_attributes)
    @item.store_id = @store.id
    if @item.save
      redirect_to admin_store_items_path(@store)
    else
      flash[:danger] = 'Invalid information entered, try again'
      render :new
    end
  end

  def show
  end

  def edit
    @store = Store.find(params["store_id"])
    @item = Item.find(params[:id])
  end

  def update
    @store = Store.find(params["store_id"])
    @item = Item.find(params[:id])
    @item.update(item_params)

    redirect_to admin_store_items_path(@store)
  end


  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :description, :image, :status, :price)
  end

  def item_attributes
    params.require(:item).permit(:title, :description, :price, :image, :status, category_ids: [])
  end

end
