class Admin::ItemsController < Admin::AdminController
  before_action :set_item, only: [:show, :edit, :update]

  def index
    @items = Item.all
  end

  def show

  end

  def edit

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

  def update
  end

  def destroy
  end

  private


  def item_attributes
    params.require(:item).permit(:title, :description, :price, :image, :role, category_ids: [])
  end
end
