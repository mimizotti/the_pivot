class Category < ApplicationRecord
  has_many :item_categories
  has_many :items, through: :item_categories
  validates :name, presence: true, uniqueness: true

  include FriendlyId
  friendly_id :name, use: :slugged

  def best_image
    if items.count > 0
      items.by_popularity.first.image
    else
      "https://i.pinimg.com/originals/45/d9/2e/45d92e009aefefb6303d8d8550e4a8eb.png"
    end
  end

end
