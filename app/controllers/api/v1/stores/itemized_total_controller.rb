class Api::V1::Stores::ItemizedTotalController < ApplicationController
  skip_before_action :authenticate_request, only: %i[show]
  def show
    items = Store.find(params[:id]).revenue_by_item
    render json: items
  end
end
