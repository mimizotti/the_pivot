class CategoriesController < ApplicationController

  def index
    @categories = Category.all.sort_by { |category| category.name.upcase }
  end

  def show
    @category = Category.friendly.find(params[:category])
  end

end
