require 'rails_helper'

describe "Visitor can visit root page" do
  scenario "can see link to visit all items" do
    visit '/'

    expect(current_path).to eq(root_path)
    expect(page).to have_link("All Items")

    click_on "All Items"

    expect(current_path).to eq('/items')
    expect(page).to have_content("All Items")
  end

  scenario "can see link to visit all categories" do
    visit '/'

    expect(current_path).to eq(root_path)
    expect(page).to have_link("All Categories")

    click_on "All Categories"

    expect(current_path).to eq('/categories')
    expect(page).to have_content("All Categories")
  end
end
