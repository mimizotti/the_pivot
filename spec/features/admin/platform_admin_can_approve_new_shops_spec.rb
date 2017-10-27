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

  scenario "I can approve a new business for my website" do
    @store = create(:store, status: "pending")
    datetime = @store.created_at

    visit "/admin/dashboard"
    click_on "Pending Stores"

    expect(page).to have_content(@store.name)
    expect(page).to have_content("Request made on #{datetime.month}/#{datetime.day}/#{datetime.year.to_s[2..3]}")

    click_on(@store.name)
    click_on("Approve Business")
    store = Store.find(@store.id)

    expect(store.online?).to be_truthy
    expect(page).to_not have_content(@store.name)
    expect(page).to_not have_content("Request made on #{datetime.month}/#{datetime.day}/#{datetime.year.to_s[2..3]}")
  end

  scenario "I can deny a new business application for my website" do
    @store = create(:store, status: "pending")
    datetime = @store.created_at

    visit "/admin/dashboard"
    click_on "Pending Stores"

    expect(page).to have_content(@store.name)
    expect(page).to have_content("Request made on #{datetime.month}/#{datetime.day}/#{datetime.year.to_s[2..3]}")

    click_on(@store.name)
    click_on("Reject Business")
    store = Store.find(@store.id)

    expect(store.rejected?).to be_truthy
    expect(page).to_not have_content(@store.name)
    expect(page).to_not have_content("Request made on #{datetime.month}/#{datetime.day}/#{datetime.year.to_s[2..3]}")
  end

end
