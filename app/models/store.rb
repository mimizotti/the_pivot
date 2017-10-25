class Store < ApplicationRecord
  validates_presence_of :name, :description, :image
  validates_uniqueness_of :name
  has_many :items
  has_many :user_roles
  has_many :users, through: :user_roles

  enum status: ["online", "offline"]

  def retire_items
    items.map do |item|
      item.update_columns(status: 1)
    end
  end

  def activate_items
    items.map do |item|
      item.update_columns(status: 0)
    end
  end
end
