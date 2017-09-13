class Category < ApplicationRecord
  has_many :item_categories
  has_many :items, through: :item_categories
  validates :name, presence: true, uniqueness: true

  include FriendlyId
  friendly_id :name, use: :slugged

  def to_param
    slug
  end
end
