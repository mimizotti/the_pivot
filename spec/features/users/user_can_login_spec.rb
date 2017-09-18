require 'rails_helper'

RSpec.feature "Visitor Can Login" do
  context "as a user" do
    it "can enter information and press login" do
      User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive")

      visit "/"
      expect(page).to have_content("Login")

      click_on "Login"
      expect(current_path).to eq("/login")

      fill_in 'Username', with: 'bonjovirules'
      fill_in 'Password', with: 'deadoralive'

      click_on "Login"
      expect(current_path).to eq("/dashboard")
      expect(page).to have_content("Logged in as bonjovirules")
      expect(page).to have_content('bonjovirules')
      expect(page).to_not have_content("Login")
    end
  end
end
