class UserRole < ApplicationRecord
  belongs_to :user
  belongs_to :role
  belongs_to :store

  def self.find_role(store, user)
    find_by(store: store, user: user).role.name
  end
end
