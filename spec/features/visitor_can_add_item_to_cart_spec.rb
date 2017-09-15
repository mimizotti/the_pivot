require 'rails_helper'

RSpec.describe "Visitor Can Add Items To Cart" do
  context "they add an item to the cart" do
    it "see that item in their view" do
      category = Category.create(name: "scuba")
      item = category.items.create!(title: "Mask", description: "This is for your face", price: 10.00, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")

      visit '/scuba'
      expect(page).to have_button("Add to cart")

      click_button "Add to cart"
      click_button "Add to cart"

      find(:css, '.cart').click

      expect(current_path).to eq(cart_path)
      expect(page).to have_css("img[src*='https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg']")
      expect(page).to have_content(item.title)
      expect(page).to have_content(item.description)
      expect(page).to have_content(20.00)
    end
  end
end
