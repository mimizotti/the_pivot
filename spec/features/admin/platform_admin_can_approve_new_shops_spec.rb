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

  # As a user,
  # When I am logged in as a platform admin, and I navigate to /dashboard
  # I should see a link to see pending business requests
  # When I click on that link, I should see a list of pending requests
  # I should see a button to approve each request or decline each request
  # And then that store will be listed or unlisted on site depending approval
  #

  scenario "I can approve a new business for my website" do

  end

  scenario "I can deny a new business application for my website" do


  end


end
