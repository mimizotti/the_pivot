class CategoriesController < ApplicationController

  def index
    @categories = Category.order(:name)
  end

  def show
    @category = Category.friendly.find(params[:category])
  end

end
