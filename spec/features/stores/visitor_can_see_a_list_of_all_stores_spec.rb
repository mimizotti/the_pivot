
require 'rails_helper'

describe "As a visitor" do
  before(:each) do
    @stores  = create_list(:store,2)

    item1 = create(:item)
    item2 = create(:item)

    @stores.first.items << item1
    @stores.second.items << item2

    visit stores_path
  end

  scenario "I can see a list of all stores" do
    expect(current_path).to eq('/stores')
    expect(Store.count).to eq(4)
    expect(page).to have_css('.store', count: 4)
    @stores.each do |store|
      expect(page).to have_content(store.name)
    end
  end

  scenario "I can click on an individual store logo and add the items for that store to my cart" do
    click_on @stores.first.name

    expect(current_path).to eq("/stores/#{Store.first.id}")
    expect(page).to have_content(@stores.first.name)

    @stores.first.items.each do |item|
      expect(page).to have_content(item.title)
    end

    click_on "Add to Cart", match: :first

    visit stores_path

    click_on @stores.second.name

    click_on "Add to Cart", match: :first

    find(:css, ".cart").click

    expect(current_path).to eq(cart_path)
    expect(page).to have_content(@stores.first.items.first.title)
    expect(page).to have_content(@stores.first.items.first.title)
  end
end
