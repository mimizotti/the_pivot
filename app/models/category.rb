class Category < ApplicationRecord
  has_many :item_categories
  has_many :items, through: :item_categories
  validates :name, presence: true, uniqueness: true

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  def to_param
    slug
  end
end
