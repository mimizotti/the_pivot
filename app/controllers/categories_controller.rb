class CategoriesController < ApplicationController

  def show
    @category = Category.friendly.find_by(params[:slug])
  end

end
