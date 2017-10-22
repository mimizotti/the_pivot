class Item < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :description, :price, presence: true

  has_many :order_items
  has_many :orders, through: :order_items

  has_many :item_categories
  has_many :categories, through: :item_categories

  belongs_to :store
  enum status: ["active", "retired"]

  scope :unordered, -> { includes(:order_items).where("order_items.item_id", nil) }

  def self.by_revenue
    select("items.*, sum(order_items.line_item_total) AS revenue")
    .joins(:order_items)
    .group("items.id")
    .order("revenue DESC")
  end

end
