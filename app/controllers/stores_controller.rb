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
    if check_response(@store)
      redirect_to stores_path
    else
      redirect_to new_store_path
    end
  end


  private

  def store_params
    params.require(:store).permit(:name, :description, :image)
  end

  def check_response(store)
    if store.save
      flash[:message] = "Thank you for your submission, if your store is approved, then you'll see it here!"
      return true
    else
      flash[:message] = "Invalid submission"
      return false
    end
  end

end
