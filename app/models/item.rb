
class Item < ApplicationRecord
  has_many :order_items
  has_many :orders, through: :order_items

  has_many :item_categories
  has_many :categories, through: :item_categories

  belongs_to :store
  enum status: ["active", "retired"]

  validates :title, presence: true, uniqueness: true
  validates :description, :price, presence: true

end
