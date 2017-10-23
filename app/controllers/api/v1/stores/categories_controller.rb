class Api::V1::Stores::CategoriesController < ApplicationController
  before_action :authenticate

  def index
    render json: Category.first
  end

  private

  def authenticate
    unless JsonTokenHandler.authenticate_token(request.headers["X-Token"])
      render json: nil
    end
  end

end
