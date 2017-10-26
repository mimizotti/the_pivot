require 'rails_helper'

RSpec.feature "Visitor Logs in" do
  before(:each) do
    create_list(:item, 10)
  end
  context "as a user" do
    it "with valid information" do
      User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive")

      visit "/"
      expect(page).to have_content("Login")

      within(".login") do
        click_on "Login"
      end
      expect(current_path).to eq("/login")

      fill_in 'Username', with: 'bonjovirules'
      fill_in 'Password', with: 'deadoralive'

      click_button "Login"
      expect(current_path).to eq("/dashboard")
      expect(page).to_not have_content("Login")
    end
  end

  context "as an admin" do
    it "with valid information" do
      User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", platform_admin: true)

      visit "/"
      expect(page).to have_content("Login")

      within(".login") do
        click_on "Login"
      end
      expect(current_path).to eq("/login")

      fill_in 'Username', with: 'bonjovirules'
      fill_in 'Password', with: 'deadoralive'

      click_button "Login"

      expect(current_path).to eq admin_dashboard_path
      expect(page).to have_content('Bon Jovi')
      expect(page).to_not have_content("Login")
    end
  end

  context "as any user" do
    it "with invalid information" do
      User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive")

      visit "/"
      expect(page).to have_content("Login")

      within(".login") do
        click_on "Login"
      end
      expect(current_path).to eq("/login")

      fill_in 'Username', with: 'bonjovirules'
      fill_in 'Password', with: 'aliveordead'

      click_button "Login"

      expect(current_path).to eq login_path
      expect(page).to have_content("You have entered an incorrect username or password.")
    end
  end
end
