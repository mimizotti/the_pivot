require 'rails_helper'

RSpec.describe "Visitor Can Add Items To Cart" do
  context "they add an item to the cart" do
    # before(:each) do
    #   category = Category.create(name: "scuba")
    #   item = category.items.create!(title: "Mask", description: "This is for your face", price: 10.99, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")
    # end
    it "see that item in their view" do
      category = Category.create(name: "scuba")
      item = category.items.create!(title: "Mask", description: "This is for your face", price: 10.99, image: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")

      # As a visitor
      visit '/scuba'
      # When I visit any page with an item on it
      # I should see a link or button for “Add to Cart”
      expect(page).to have_button("Add to cart")

      click_button "Add to cart"
      # When I click “Add to cart” for that item
      # And I click a link or button to view cart

      click_link "View Cart"

      # And my current path should be “/cart”
      expect(current_path).to eq(cart_path)
      # And I should see a small image, title, description and price for the item I just added
      expect(page).to have_css("img[src*='https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg']")
      expect(page).to have_content(item.title)
      expect(page).to have_content(item.description)
      expect(page).to have_content(item.price)
      # And there should be a “total” price for the cart that should be the sum of all items in the cart
      #this will sit on the cart model so I'll wait to write this until we're together
    end
  end
end
