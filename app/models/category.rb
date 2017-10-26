class Category < ApplicationRecord
  has_many :item_categories
  has_many :items, through: :item_categories
  validates :title, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true

  before_validation :generate_slug

  def generate_slug
    self.slug = title.parameterize
  end
end
