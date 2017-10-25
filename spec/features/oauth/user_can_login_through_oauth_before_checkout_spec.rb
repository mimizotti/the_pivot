require 'rails_helper'

describe "user can login through oauth" do
  # scenario "and then checkout items in cart" do
  #   stub_omniauth
  #   category = create(:category)
  #   item = create(:item)
  #
  #   category.items << item
  #
  #   visit "/#{category.name}"
  #
  #   expect(current_path).to eq("/#{Category.first.name}")
  #
  #   category.items.each do |item|
  #     expect(page).to have_content(item.title)
  #   end
  #
  #   click_on "Add to Cart", match: :first
  #   find(:css, ".cart").click
  #
  #   expect(current_path).to eq(cart_path)
  #   expect(page).to have_content(category.items.first.title)
  #   expect(page).to have_content("Login or Register to checkout")
  #   expect(page).to_not have_content("Checkout")
  #
  #   click_on "Login or Register to checkout"
  #   within(".loginBtn") do
  #     click_on "Sign in with Twitter"
  #   end
  #
  #   find(:css, ".cart").click
  #   click_on "Checkout"
  #
  #   expect(page).to have_content("Order was successfully placed")
  # end
end

  def stub_omniauth
      OmniAuth.config.test_mode = true

      OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
        provider: 'twitter',
          info: {
            uid: "1234",
            name: "Ash McCash",
            nickname: "IamtheWalrus",
        },
        credentials: {
          token: "pizza",
          secret: "secretpizza"
        }
      })
  end
