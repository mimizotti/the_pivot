require 'rails_helper'

RSpec.describe "Visitor Can Add Items To Cart" do
  context "they add an item to the cart" do
    it "see that item in their view" do
      category = Category.create(name: "scuba")
      item = category.items.create!(title: "Mask", description: "This is for your face", price: 10.00, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")

      visit '/scuba'

      click_button "Add to cart"

      visit '/cart'

      click_link "Remove"

      expect(current_path).to eq(cart_path)
      expect(page).to have_content("Successfully removed Mask from your cart.")
      expect(page).to_not have_css("img[src*='https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg']")
      expect(page).to_not have_content(item.description)
      expect(page).to_not have_content(item.price)
      expect(page).to have_content(0)
      expect(page).to have_link("Mask")
    end
  end
end
