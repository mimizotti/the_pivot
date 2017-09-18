class Order < ApplicationRecord
  belongs_to :user

  has_many :order_items
  has_many :items, through: :order_items

  enum status: ["Ordered", "Paid", "Cancelled", "Completed"]

  def add(item_hash)
    item_hash.each do |item, item_quantity|
      items << item
      order_item = OrderItem.find_by(item_id: item.id)
      order_items.find_by(item_id: item.id).update(quantity: item_quantity)
      order_items.find_by(item_id: item.id).update(line_item_total: (item.price * item_quantity))
    end
  end

  def self.ordered_count
    where(status: "Ordered").count
  end

  def self.paid_count
    where(status: "Paid").count
  end

  def self.cancelled_count
    where(status: "Cancelled").count
  end

  def self.completed_count
    where(status: "Completed").count
  end

  def self.ordered
    where(status: "Ordered")
  end

  def self.paid
    where(status: "Paid")
  end

  def self.cancelled
    where(status: "Cancelled")
  end

  def self.completed
    where(status: "Completed")
  end

end
