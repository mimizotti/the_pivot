require 'rails_helper'

RSpec.describe "User can see past order" do
  context "they have multiple orders" do
    it "and can see them when visiting the orders page" do
      user_1 = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive")

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)

      category_1 = Category.create(name: "scuba")
      category_2 = Category.create(name: "basket")

      item_1 = Item.create(title: "Mask", description: "Something to put on your face.", price: 49.95, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")
      item_2 = Item.create(title: "Fins", description: "Something to put on your feet.", price: 69.95, image: "http://www.scuba-info.com/images/scuba_gear_fins.jpg")
      item_3 = Item.create(title: "Basket Weaving Reed", description: "Something to weave your basket", price: 5.00, image: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSmgQUfZjdClyn6CqS_Sc_eTm8zLe_bgG4RUnq-sbV2x6LyM1dD9ESyJdGf9AbdnKNYxe2wbRY&usqp=CAE")
      item_4 = Item.create(title: "10 in Basket Base", description: "Something to base your basket on", price: 9.99, image: "https://files.slack.com/files-pri/T029P2S9M-F731BU32S/base-300x300.jpg")

      ItemCategory.create(item: item_1, category: category_1)
      ItemCategory.create(item: item_2, category: category_1)
      ItemCategory.create(item: item_3, category: category_2)
      ItemCategory.create(item: item_4, category: category_2)

      order_1 = Order.create(user_id: 1, status: 1, total_price: 154.85)
      order_2 = Order.create(user_id: 2, status: 1, total_price: 149.89)

      order_1.items << [item_1, item_2]

      OrderItem.create(order: order_1, item: item_1, quantity: 3)
      OrderItem.create(order: order_1, item: item_3, quantity: 1)
      OrderItem.create(order: order_2, item: item_2, quantity: 2)
      OrderItem.create(order: order_2, item: item_4, quantity: 1)

      visit "/orders"

      expect(page).to_not have_content("order 2")

      click_on "order 1"    

      expect(current_path).to eq("/orders/1")
      expect(page).to have_content("order 1")
      expect(page).to_not have_content("order 2")
      expect(page).to have_content("Mask")
      expect(page).to have_content("154.85")
      expect(page).to have_css("img[src*='http://www.scuba-info.com/images/scuba_gear_fins.jpg']")
      expect(page).to have_content("69.95")
    end
  end
end
