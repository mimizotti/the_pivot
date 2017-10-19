class CategoriesController < ApplicationController

  def index
    @categories = Category.by_popularity
  end

  def show
    @category = Category.friendly.find(params[:category])
  end

end
