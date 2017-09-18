RSpec.feature "Admin visits dashboard" do
  scenario "admin sees dashboard" do

    user = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", role: "admin")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit admin_dashboard_path

    expect(page).to have_content("Admin Dashboard")
  end

  scenario "admin visits dashbaord from root" do
    user = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", role: "admin")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit root_path

    click_link "Dashboard"

    expect(page).to have_content("Admin Dashboard")
  end
end
