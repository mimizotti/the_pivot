class Item < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :description, :price, presence: true

  has_many :order_items
  has_many :orders, through: :order_items

  has_many :item_categories
  has_many :categories, through: :item_categories

  belongs_to :store
  enum status: ["active", "retired"]

  def self.by_revenue
    left_joins(:order_items)
    .group(:id)
    .order("sum(order_items.line_item_total) DESC")
  end

end
