require 'rails_helper'

RSpec.describe "as a visitor visiting main page" do
  before(:each) do
    visit ("/")
  end

  xit "can see links for stores" do

    click_on "All Stores"

    expect(current_path).to eq("/stores")
    expect(page).to have_content("Stores")
    # expect(page).to have_css('.store', count: Store.count)

  end

  it "can see links for categories" do

    click_on "All Categories"

    expect(current_path).to eq("/categories")
    expect(page).to have_content("Categories")
    #css stuff here

  end

  it "can see links for items" do

    click_on "All Items"

    expect(current_path).to eq("/items")
    expect(page).to have_content("All Items")
    # expect(page).to have_css('.item', count: Item.count)
    #item image/price/name.....etc

  end

end
