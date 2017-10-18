class Store < ApplicationRecord
  validates_presence_of :name, :description, :image
  validates_uniqueness_of :name
  has_many :items
end
