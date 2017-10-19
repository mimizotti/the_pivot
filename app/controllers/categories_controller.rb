class CategoriesController < ApplicationController

  def index

  end

  def show
    @category = Category.friendly.find(params[:category])
  end

end
