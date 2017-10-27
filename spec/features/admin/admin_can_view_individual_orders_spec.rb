require 'rails_helper'

RSpec.describe "As an admin" do

  let(:store) { Store.create(name: "Knautical Knots", description: "Underwater basket weaving supplies, not just for lazy millenials!", image: "knotical-knots.png") }

  describe "I visit the order show page" do
    it "I see it's attributes" do
      admin = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", platform_admin: true)
      user = User.create(first_name: "Jim", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovisucks", password: "deadoralive")
      category = Category.create(name: "scuba")
      item_1 = category.items.create!(title: "Mask", store: store, description: "This is for your face", price: 10.00, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")
      item_2 = category.items.create!(title: "Tank", store: store, description: "This is for your face", price: 10.00, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")
      order = Order.create(user_id: user.id, status: 0, total_price: 30.00)
      OrderItem.create(item: item_1, order: order, quantity: 2, line_item_total: 20.00)
      OrderItem.create(item: item_2, order: order, quantity: 1, line_item_total: 10.00)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit order_path(order)

      expect(page).to have_content("Order placed by: Jim Jovi")
      expect(page).to have_content("Mask")
      expect(page).to have_content("2")
      expect(page).to have_content("$10.00")
      expect(page).to have_content("$30.00")
      expect(page).to have_content("ordered")
      expect(page).to have_content("$20.00")
    end
  end
end
