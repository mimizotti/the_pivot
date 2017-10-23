class Category < ApplicationRecord
  has_many :item_categories
  has_many :items, through: :item_categories
  validates :name, presence: true, uniqueness: true

  include FriendlyId
  friendly_id :name, use: :slugged

  def self.by_popularity
    left_joins(items: :order_items)
    .group("categories.id", "items.id")
    .order("sum(order_items.quantity) DESC")
  end

  def best_image
    items.by_revenue.first.image
  end

end
