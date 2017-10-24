

require 'rails_helper'

  describe "Visitor can visit root page" do
    before(:each) do
      create_list(:item, 10)
    end
    scenario "can see link to visit all items" do
      visit '/'

      expect(current_path).to eq(root_path)
      expect(page).to have_content("Items")

      within(".items") do
        click_on "Items"
      end

      expect(current_path).to eq('/items')
      expect(page).to have_content("Items")
    end

  scenario "can see link to visit all categories" do
    visit '/'

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Categories")

    within(".categories") do
      click_on "Categories"
    end

    expect(current_path).to eq('/categories')
    expect(page).to have_content("Categories")
  end

  scenario "can see link to visit all stores" do
    visit '/'

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Stores")

    within(".stores") do
      click_on "Stores"
    end

    expect(current_path).to eq('/stores')
    expect(page).to have_content("Stores")
  end
end
