
class Item < ApplicationRecord
  has_many :order_items
  has_many :orders, through: :order_items

  has_many :item_categories
  has_many :categories, through: :item_categories

  belongs_to :store
  enum status: ["active", "retired"]

  validates :title, presence: true, uniqueness: true
  validates :description, :price, presence: true

  def self.by_popularity
    select("items.*, count(order_items.id) as sales")
    .left_joins(:order_items)
    .group(:id)
    .distinct
    .order("sales DESC")
  end

end
