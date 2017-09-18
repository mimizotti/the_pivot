RSpec.feature "Admin edits the user" do
  scenario "Admin can edit their own account" do

    user = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", role: "admin")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit admin_dashboard_path

    click_link("Edit Account")

    fill_in "user[email]", with: "findingnemo@sea.com"
    fill_in "user[address]", with: "123 UnderSea Way"
    fill_in "user[first_name]", with: "James"
    fill_in "user[last_name]", with: "Smith"
    click_button "Update"

    expect(current_path).to eq(admin_dashboard_path)

    expect(page).to have_content("Admin Dashboard")
    expect(page).to have_content("James Smith")
  end

  scenario "Cannot modify any other users account" do

    user = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", role: "admin")
    user_2 = User.create(first_name: "Sponge", last_name: "Bob", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit admin_dashboard_path
    click_link("Edit Account")
    expect(page).to_not have_content(user_2.first_name)
    click_button "Update"

    expect(page).to have_content("Admin Dashboard")
    expect(page).to have_content("Bon Jovi")
  end
end
