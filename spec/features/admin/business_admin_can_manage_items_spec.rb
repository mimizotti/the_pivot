require 'rails_helper'

feature "Business Admin" do
  before(:each) do
    bus_man = User.create(first_name: "Josh", last_name: "Mejia", username: "josh@turing.io", password: "password", address: "1331 17th St ll100, Denver, CO 80202", email: "josh@turing.io")
    @store = create(:store)
    @category = create(:category)
    items = create_list(:item, 10, store: @store)

    items.each do |item|
      ItemCategory.create(item: item, category: @category)
    end

    UserRole.create(user: bus_man, role: Role.create(name: "Business Admin"), store: @store)

    visit '/'

    within(".login") do
      click_on "Login"
    end

    fill_in "Username", with: "josh@turing.io"
    fill_in "Password", with: "password"
    click_button "Login"
  end
  scenario "I can create items for my store" do
    expect(current_path).to eq('/admin/dashboard')
<<<<<<< HEAD
=======

>>>>>>> master
    expect(page).to have_content("Business Admin")

    find(".#{Store.first.name}").click

    expect(page).to have_content("Create New Item")

    click_link 'Create New Item'

    expect(current_path).to eq(new_admin_store_item_path(@store))

    within(".container-fluid") do
      expect(page).to have_field("Title")
      expect(page).to have_field("Description")
      expect(page).to have_field("Price")
      expect(page).to have_field("Image")
    end

    fill_in "Title", with: "Ricky's Hoola Hoop"
    fill_in "Description", with: "This was once owned by the U.S. hoola hoop champion -- Ricky Amparo"
    fill_in "Price", with: 99.00
    fill_in 'item[image]', with: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR509iY3ruk1lW5PmyGSd_on1SXTnNLtbDLVW4Xly1DCiksAmp48Q"

    check "#{@category.name}"
    click_button "Create Item"

    expect(current_path).to eq(admin_store_items_path(@store))
    expect(page).to have_content("Ricky's Hoola Hoop")
    expect(page).to have_content("This was once owned by the U.S. hoola hoop champion -- Ricky Amparo")
    expect(page).to have_content("99")
  end
  scenario "I can edit items in my store" do

    find(".#{Store.first.name}").click

    click_link "View all items"

    first('.edit').click_button('Edit')

    fill_in "Description", with: "This item is no longer useless"

    click_on "Update Item"

    expect(current_path).to eq(admin_store_items_path(@store))

    expect(page).to have_content("This item is no longer useless")
  end
  scenario "I can retire items in my store" do

    find(".#{Store.first.name}").click

    click_link "View all items"

    first('.edit').click_button('Edit')

    choose('retire', visible: false)

    click_on "Update Item"

    expect(current_path).to eq(admin_store_items_path(@store))
    expect(page).to have_content("retired")
  end
  scenario "I can update my business information" do

    find(".#{Store.first.name}").click

    expect(page).to have_content("Update Business Information")

    click_on "Update Business Information"

    expect(page).to have_field("Name")
    expect(page).to have_field("Description")
    expect(page).to have_field("Image")

    fill_in "Description", with: "This store sells all the things."

    click_on "Update Store"

    expect(current_path).to eq(admin_store_path(@store))
    expect(page).to have_content("This store sells all the things.")
  end
end
