class Api::V1::Stores::BestItemsController < ApplicationController
  skip_before_action :authenticate_request, only: %i[login register]
  def show
    render json: Store.find(params[:id]).best_items
  end
end
