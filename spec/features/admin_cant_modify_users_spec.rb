RSpec.feature "Admin edits the user" do
  scenario "Admin can edit their own account" do

    User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", role: "admin")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit admin_dashboard_path

    click_link("Edit Account")

    expect(current_path).to eq(edit_account_path)

    fill_in "user[username]", with: "FindingNemo"
    fill_in "user[password]", with: "FindingDory"
    click_button "Change Account"

    expect(current_path).to eq(admin_dashboard_path)

    expect(page).to have_content("Admin Dashboard")
    expect(page).to have_content("Logged in as FindingNemo")
  end

  scenario "Cannot modify any other users account" do

    user = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", role: "admin")
    user_2 = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit edit_account_path
    expect(page).to_not have_content(user2.username)

    visit dashboard_path

    expect(page).to have_content("404")
  end
end
