require 'rails_helper'

RSpec.describe "As an admin" do
  describe "I visit the order show page" do
    it "I see it's attributes" do
      user = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", role: "admin")

      category_1 = Category.create(name: "scuba")
      category_2 = Category.create(name: "basket")

      item_1 = Item.create(title: "Mask", description: "Something to put on your face.", price: 49.95, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")
      item_2 = Item.create(title: "Fins", description: "Something to put on your feet.", price: 69.95, image: "http://www.scuba-info.com/images/scuba_gear_fins.jpg")
      item_3 = Item.create(title: "Basket Weaving Reed", description: "Something to weave your basket", price: 5.00, image: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSmgQUfZjdClyn6CqS_Sc_eTm8zLe_bgG4RUnq-sbV2x6LyM1dD9ESyJdGf9AbdnKNYxe2wbRY&usqp=CAE")
      item_4 = Item.create(title: "10 in Basket Base", description: "Something to base your basket on", price: 9.99, image: "https://files.slack.com/files-pri/T029P2S9M-F731BU32S/base-300x300.jpg")

      ItemCategory.create(item_id: item_1, category_id: category_1)
      ItemCategory.create(item_id: item_2, category_id: category_1)
      ItemCategory.create(item_id: item_3, category_id: category_2)
      ItemCategory.create(item_id: item_4, category_id: category_2)

      order_1 = Order.create(user_id: 1, status: 1, total_price: 154.85)

      OrderItem.create(order_id: order_1, item_id: item_1, quantity: 3)
      OrderItem.create(order_id: order_1, item_id: item_3, quantity: 1)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit admin_dashboard_path

      click_on "Order_1"

      expect(current_path).to eq(not sure yet)
      expect(page).to have_link("Mask")
      expect(page).to have_content("3")
      expect(page).to have_content("$49.95")
      expect(page).to have_content("$149.85")
      expect(page).to have_content("Ordered")
      expect(page).to have_content("219.80")
    end
  end
end
      
