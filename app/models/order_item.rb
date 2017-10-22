class OrderItem < ApplicationRecord
  validates_presence_of :item_id, :order_id
  belongs_to :item
  belongs_to :order
end
