require 'rails_helper'

feature "As a business manager" do
  before(:each) do
    bus_man = User.create(first_name: "Josh", last_name: "Mejia", username: "josh@turing.io", password: "password", address: "1331 17th St ll100, Denver, CO 80202", email: "josh@turing.io")
    store = create(:store)
    items = create_list(:item, 10, store: store)
  end
  scenario "I can create items" do
    visit '/'

    click_on "Login"

    fill_in "Username", with: "josh@turing.io"
    fill_in "Password", with: "password"
    click_on "Login"

    expect(current_path).to eq('admin/dashboard')

    expect(page).to have_content("You are a Business Admin for the following store:")

    expect(page).to have_content("Create Item")

    click_on "Create Item"

    expect(current_path).to eq(new_admin_item_path)
    expect(page).to have_content("Create New Item")

    within(".container-fluid") do
      expect(page).to have_field("Title")
      expect(page).to have_field("Description")
      expect(page).to have_field("Price")
      expect(page).to have_field("Image")
    end
  end
end
