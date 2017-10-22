class Category < ApplicationRecord
  has_many :item_categories
  has_many :items, through: :item_categories
  validates :name, presence: true, uniqueness: true

  include FriendlyId
  friendly_id :name, use: :slugged

  def self.by_popularity
    select("categories.*, count(items) AS item_count")
    .joins(:items)
    .group("categories.id")
    .order("item_count DESC")
  end

  def best_image
    items.by_popularity.first.image
  end

end
