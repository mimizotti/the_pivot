require 'rails_helper'

RSpec.describe "Visitor Can Add Items To Cart" do
  context "they add an item to the cart" do
    it "see that item in their view" do
      before(:each) do
        Item.create!(name: "Mask", image_url: "https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.scubadivingdreams.com%2Fwp-content%2Fuploads%2F2015%2F11%2Fthe-best-scuba-snorkel-mask-mares-i3-sunrise.jpg")
      end
      # As a visitor
      visit category_items_path
      # When I visit any page with an item on it
      # I should see a link or button for “Add to Cart”
      expect(page).to have_link("Add to cart")

      click_link "Add to cart"

      expect(page).to have_content("You now have 1 Mask in your cart!")
      # When I click “Add to cart” for that item
      # And I click a link or button to view cart
      click_link "View Cart"

      # And my current path should be “/cart”
      expect(current_path).to eq(cart_path)
      # And I should see a small image, title, description and price for the item I just added
      expect(page).to have_content(item.image_url)
      expect(page).to have_content(item.title)
      expect(page).to have_content(item.description)
      expect(page).to have_content(item.price)
      # And there should be a “total” price for the cart that should be the sum of all items in the cart
      #this will sit on the cart model so I'll wait to write this until we're together
    end
  end
end
