RSpec.feature "Unauthenticated user tries to go to admin dashboard" do
  scenario "gets a 404 error" do
    visit admin_dashboard_path

    expect(page).to have_content("404")
  end
end
