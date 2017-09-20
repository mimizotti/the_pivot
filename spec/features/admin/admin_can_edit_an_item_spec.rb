require 'rails_helper'

RSpec.describe "An admin is logged in and clicks edit from their dashboard list" do
  it "and can edit an item" do
    admin = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", role: 1)
    category = Category.create(name: "scuba")
    item_1 = category.items.create!(title: "Mask", description: "This is for your face", price: 10.00, image: "http://via.placeholder.com/75")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit '/admin/items'
    click_on "Edit"

    expect(current_path).to eq('/admin/items/1/edit')
    fill_in "item[title]", with: "Edited Item"
    fill_in "item[description]", with: "Test"
    fill_in "item[image]", with: "http://via.placeholder.com/75"
    choose('retire', visible: false)
    click_on "Update"

    expect(current_path).to eq('/admin/items')

    visit item_path(item_1)

    expect(page).to have_content("Edited Item")
    expect(page).to have_content("Test")
    expect(page).to have_css("img[src*='http://via.placeholder.com/75']")
    expect(page).to have_content("Retired")
  end
end