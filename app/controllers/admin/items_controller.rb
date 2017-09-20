class Admin::ItemsController < ApplicationController

  before_action :require_admin

  def index
    @items = Item.all
  end

  def edit
  end
end