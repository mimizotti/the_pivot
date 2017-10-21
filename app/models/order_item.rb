class OrderItem < ApplicationRecord
  belongs_to :item
  belongs_to :order

  after_save :add_line_item_total

  private
  def add_line_item_total
    self.line_item_total = Item.find(self.item_id).price * self.quantity
  end
end
