class Item < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :description, :price, presence: true

  has_many :order_items
  has_many :orders, through: :order_items
end
