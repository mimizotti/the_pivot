class Admin::UserRolesController < ApplicationController
  def index
    @store = Store.find(params["id"])
    @users = @store.users
  end

  def destroy
    user_role = UserRole.find_by(store: params["store"], user: params["id"])
    user_role.destroy
    redirect_back(fallback_location: root_path)
  end
end
