class StoresController < ApplicationController

  def index
    @stores = Store.all
  end

  def show
    @store = Store.find(params[:id])
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    @store.status = "pending"
    @store.save!
    redirect_to stores_path
    flash[:message] = "Thank you for your submission, if your store is approved, then you'll see it here!"
  end


  private

  def store_params
    params.require(:store).permit(:name, :description, :image)
  end

end
