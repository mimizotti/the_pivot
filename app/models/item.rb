class Item < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :description, :price, presence: true

  enum status: ["active", "retired"]
end
