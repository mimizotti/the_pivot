require 'rails_helper'

RSpec.describe "User can see past order" do
  context "they have multiple orders" do
    it "and can see them when visiting the orders page" do
      user = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive")
      category = Category.create(name: "scuba")
      item_1 = category.items.create!(title: "Mask", description: "This is for your face", price: 10.00, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")
      item_2 = category.items.create!(title: "Tank", description: "This is for your face", price: 10.00, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit items_path

      within(".item-#{item_1.id}") do
        find(:css, ".add-to-cart").click
      end

      within(".item-#{item_1.id}") do
        find(:css, ".add-to-cart").click
      end

      within(".item-#{item_2.id}") do
        find(:css, ".add-to-cart").click
      end

      find(:css, ".cart").click

      visit "/dashboard"

      find(:css, ".cart").click

      click_button "Checkout"

      visit "/orders"

      click_on "order 1"

      expect(current_path).to eq("/orders/1")
      expect(page).to have_content("Order 1")
      expect(page).to have_content("Mask")
      expect(page).to have_content("$20.00")
      expect(page).to have_content("$30.00")
      expect(page).to have_css("img[src*='https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg']")
    end
  end
end
