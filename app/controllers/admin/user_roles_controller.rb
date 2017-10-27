class Admin::UserRolesController < ApplicationController
  def index
    @store = Store.find(params["id"])
    @users = @store.users
  end

  def show
    @user = User.find_by(email: params["q"])
    @store = Store.find(params["id"])
  end

  def update
    store = Store.find(params["store"])
    if params["role"] == "Business Manager"
      UserRole.create(user_id: params["id"], store_id: store.id, role_id: 1)
    else
      UserRole.create(user_id: params["id"], store_id: store.id, role_id: 2)
    end
    redirect_to admin_store_path(store)
  end

  def destroy
    user_role = UserRole.find_by(store: params["store"], user: params["id"])
    user_role.destroy
    redirect_back(fallback_location: root_path)
  end
end
