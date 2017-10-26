class OrderItem < ApplicationRecord
  belongs_to :item
  belongs_to :order

  enum status: [:ordered, :paid, :cancelled, :completed]

  def self.store_orders(store)
    joins(:item).where(items: {store: store})
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

end

