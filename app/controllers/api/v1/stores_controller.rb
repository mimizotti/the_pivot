class Api::V1::StoresController < Api::V1::ApplicationController
  skip_before_action :authenticate_request, only: %i[index show]
  def index
    render json: Store.all
  end

  def show
    render json: Store.find(params[:id])
  end
end
