require 'rails_helper'

feature 'As a registered user' do
  context 'I should be able to visit any stores page' do
    it 'and should be able to purchase items' do
      user = create(:user)
      stores = create_list(:store, 3)
      category = create(:category)
      stores.each do |store|
        store.items << create_list(:item, 3)
        category.items << store.items
      end

      allow_any_instance_of(ApplicationController)
        .to receive(:current_user)
        .and_return(user)

      stores.each do |store|
        visit "/stores/#{store.id}"
        expect(page).to have_css(".item", count: 3)
        within(first(".item")) do
          click_on "Add to Cart"
        end
        expect(page).to have_content("You have added #{store.items.first.title} to your cart.")
      end

      visit cart_path
      click_on "Checkout"

      expect(page).to have_content("Order was successfully placed")
      expect(user.orders.count).to eq(1)

      visit cart_path

      stores.each do |store|
        store.items.each do |item|
          expect(page).to_not have_content(item.title)
        end
      end
    end
  end
end
