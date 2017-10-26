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
    img_response = Net::HTTP.get_response(URI.parse(params[:store][:image]))
    if img_response.code == "200" && @store.save!
      redirect_to stores_path
      flash[:message] = "Thank you for your submission, if your store is approved, then you'll see it here!"
    elsif img_response.code == "200"
      redirect_to new_store_path
      flash[:message] = "Invalid submission"
    else
      redirect_to new_store_path
      flash[:message] = "Image file must be tenable"
    end
  end


  private

  def store_params
    params.require(:store).permit(:name, :description, :image)
  end

end
