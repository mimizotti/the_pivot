require 'rails_helper'

RSpec.describe "An admin views a table of all items" do

  let(:store) { Store.create(name: "Knautical Knots", description: "Underwater basket weaving supplies, not just for lazy millenials!", image: "knotical-knots.png") }

  it "and sees all items and a link to edit each" do
    admin = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", platform_admin: true)
    category = Category.create(name: "scuba")
    item_1 = category.items.create!(title: "Mask", store: store, description: "This is for your face", price: 10.00, image: "http://via.placeholder.com/75")
    item_2 = category.items.create!(title: "Tank", store: store, description: "This is for your face", price: 10.00, image: "http://via.placeholder.com/75", status: 1)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit '/admin/dashboard'

    expect(page).to have_content("View all items")

    within(".all-items") do
      click_on "View all items"
    end

    expect(current_path).to eq('/admin/items')
    expect(page).to have_css("img[src*='http://via.placeholder.com/75']")
    expect(page).to have_content(item_1.title)
    expect(page).to have_content(item_1.description)
    expect(page).to have_content(item_1.status)
    expect(page).to have_content(item_2.title)
    expect(page).to have_content(item_2.description)
    expect(page).to have_content(item_2.status)
  end
  it "and clicks on an edit button" do
    admin = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", platform_admin: true)
    category = Category.create(name: "scuba")
    item_1 = category.items.create!(title: "Mask", store: store, description: "This is for your face", price: 10.00, image: "http://via.placeholder.com/75")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit '/admin/items'
    click_button "Edit"

    expect(current_path).to eq('/admin/items/3/edit')
  end
end
