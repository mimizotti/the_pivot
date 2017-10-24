class Store < ApplicationRecord
  validates_presence_of :name, :description, :image
  validates_uniqueness_of :name
  has_many :items
  has_many :user_roles
  has_many :users, through: :user_roles

end
