
require 'rails_helper'

feature "Platform Admin" do
  before(:each) do
    bigboss = User.create(first_name: "Vinnie", last_name: "McGoots", username: "platadmin", password: "password", address: "1331 17th St ll100, Denver, CO 80202", platform_admin: true, email: "mcgillicutty@turing.io")
    @store = create(:store)
    @category = create(:category)
    items = create_list(:item, 10, store: @store)

    items.each do |item|
      ItemCategory.create(item: item, category: @category)
    end

    visit '/'

    within(".login") do
      click_on "Login"
    end

    fill_in "Username", with: "platadmin"
    fill_in "Password", with: "password"
    click_button "Login"
  end

  scenario "I can create items for any store in my app" do
    expect(current_path).to eq('/admin/dashboard')

    expect(page).to have_content("Platform Admin")

    # and I should see a navigation column with a link "All Stores",
    # when I click "All Stores" I should see all stores and their logo,
    # and when I click the store logo,
    # I should see a page with the store name, the store description, and links for the following: Manage Items, Manage Orders, Update Business Information, and Manage Business Admins.


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

    fill_in "Title", with: "Double A's Diamond Key Caps"
    fill_in "Description", with: "Conflict free diamonds"
    fill_in "Price", with: 9999.99
    fill_in 'item[image]', with: "https://ae01.alicdn.com/kf/HTB14mH.QpXXXXb2XFXXq6xXFXXXK/-font-b-Gold-b-font-Sliver-104-PBT-Keycaps-Double-Shot-font-b-key-b.jpg"

    check "#{@category.title}"
    click_button "Create Item"

    expect(current_path).to eq(admin_store_items_path(@store))
    expect(page).to have_content("Double A's Diamond Key Caps")
    expect(page).to have_content("Conflict free diamonds")
    expect(page).to have_content("9999.99")
  end

  scenario "I can manage another stores orders" do

  end

  scenario "I can update a store's personal information" do

  end

  scenario "I can manage any business admin for any of my shops" do

  end


end
