class Api::V1::Stores::CategoriesController < ApplicationController
  before_action :authenticate

  def index
    store = Store.find_by(name: request.params["store"])
    if store
      render json: Category.by_store_and_popularity(store)
    else
      render json: nil
    end
  end

  private

  def authenticate
    unless JsonTokenHandler.authenticate_token(request.headers["X-Token"])
      render json: nil
    end
  end

end
