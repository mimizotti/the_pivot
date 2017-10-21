require "rails_helper"

RSpec.describe OrderItem do
  describe "relationships" do
    it "belongs to an item" do
      user = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", platform_admin: true)
      item_1 = Item.create(title: "Mask", description: "Something to put on your face.", price: 49.95, status: 1)
      order_1 = Order.create!(user_id: user.id, status: 1, total_price: 154.85)

      order_item = OrderItem.new(order_id: order_1.id, item_id: item_1.id, quantity: 3)
      expect(order_item).to respond_to(:item)
    end

    it "belongs to an order" do
      user = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", platform_admin: true)
      item_1 = Item.create(title: "Mask", description: "Something to put on your face.", price: 49.95, status: 1)
      order_1 = Order.create!(user_id: user.id, status: 1, total_price: 154.85)

      order_item = OrderItem.new(order_id: order_1.id, item_id: item_1.id, quantity: 3)
      expect(order_item).to respond_to(:order)
    end
  end
end
