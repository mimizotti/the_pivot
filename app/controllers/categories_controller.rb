class CategoriesController < ApplicationController

  def index

  end

  def show
    require "pry"; binding.pry
    @category = Category.friendly.find(params[:category])
  end

end
