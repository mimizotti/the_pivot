class Order < ApplicationRecord
  belongs_to :user

  has_many :order_items
  has_many :items, through: :order_items

  validates :user_id, :status, presence: true

  enum status: [:ordered, :paid, :cancelled, :completed]

  def add(item_hash)
    item_hash.each do |item, item_quantity|
      items << item
      order_item = OrderItem.find_by(item_id: item.id)
      order_items.find_by(item_id: item.id).update(quantity: item_quantity)
      order_items.find_by(item_id: item.id).update(line_item_total: (item.price * item_quantity))
    end
  end

  def user_full_name
    user.full_name
  end

  def user_address
    user.address
  end

  def self.ordered_count
    where(status: 0).count
  end

  def self.paid_count
    where(status: 1).count
  end

  def self.cancelled_count
    where(status: 2).count
  end

  def self.completed_count
    where(status: 3).count
  end

  def self.ordered
    where(status: 0)
  end

  def self.paid
    where(status: 1)
  end

  def self.cancelled
    where(status: 2)
  end

  def self.completed
    where(status: 3)
  end

end
