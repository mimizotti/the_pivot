class OrderItem < ApplicationRecord
  belongs_to :item
  belongs_to :order

  enum status: [:ordered, :paid, :cancelled, :completed]

  def self.store_orders(store)
    joins(:item).where(items: {store: store})
  end
end

