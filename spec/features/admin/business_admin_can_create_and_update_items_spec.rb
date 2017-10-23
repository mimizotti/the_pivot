require 'rails_helper'

feature "As a business manager" do
  before(:each) do
    bus_man = User.create(first_name: "Josh", last_name: "Mejia", username: "josh@turing.io", password: "password", address: "1331 17th St ll100, Denver, CO 80202", email: "josh@turing.io")
    store = create(:store)
    items = create_list(:item, 10, store: store)
    UserRole.create(user: bus_man, role: Role.create(name: "Business Manager"), store: store)
  end
  scenario "I can create items for my store" do
    visit '/'

    click_on "Login"

    fill_in "Username", with: "josh@turing.io"
    fill_in "Password", with: "password"
    click_on "Login"

    expect(current_path).to eq('/admin/dashboard')

    expect(page).to have_content("Business Manager")

    find("img.#{Store.first.name}").click

    expect(page).to have_content("Create New Item")

    click_link 'Create New Item'

    expect(current_path).to eq(new_admin_item_path)

    within(".container-fluid") do
      expect(page).to have_field("Title")
      expect(page).to have_field("Description")
      expect(page).to have_field("Price")
      expect(page).to have_field("Image")
      expect(page).to have_field("Store")
    end

    fill_in "Title", with: "Ricky's Hoola Hoop"
    fill_in "Description", with: "This was once owned by the U.S. hoola hoop champion -- Ricky Amparo"
    fill_in "Price", with: "99.00"
  end
end
