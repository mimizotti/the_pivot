require 'rails_helper'

describe "user can login through oauth" do
  scenario "and then checkout items in cart" do
    category = create(:category)
    item = create(:item)

    category.items << item

    visit "/#{category.name}"

    expect(current_path).to eq("/#{Category.first.name}")

    category.items.each do |item|
      expect(page).to have_content(item.title)
    end

    click_on "Add to Cart", match: :first
    find(:css, ".cart").click

    expect(current_path).to eq(cart_path)
    expect(page).to have_content(category.items.first.title)
    expect(page).to have_content("Login or Register to checkout")
    expect(page).to_not have_content("Checkout")

    click_on "Login or Register to checkout"
    click_on "Sign in with Twitter"
    
    click_on "Login"

    find(:css, ".cart").click
    click_button "Checkout"

    expect(page).to have_content("Order was successfully placed")
    expect(page).to have_content("Order #{user.orders.last.id}")
  end
end
