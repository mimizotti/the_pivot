require 'rails_helper'

RSpec.feature "Visitor Can Login" do
  context "as a user" do
    it "can enter information and press login" do
      visit "/"
      expect(page).to have_content("Login")

      click_on "Login"
      expect(current_path).to eq("/login")

      fill_in 'Last Name', with: 'Jovi'
      fill_in 'First Name', with: 'Bon'
      fill_in 'Username', with: 'bonjovirules'
      fill_in 'Password', with: 'deadoralive'
      fill_in 'Email', with: 'livingonaprayer@realtalk.com'
      fill_in 'Address', with: 'address'

      click_on "Login"
      expect(current_path).to eq("/dashboard")
      expect(page).to have_content("Logged in as user.name")
      expect(page).to have_content('Bon Jovi')
      expect(page).to have_content('address')
      expect(page).to have_content('livingonaprayer@realtalk.com')
      expect(page).to have_content('bonjovirules')
      expect(page).to_not have_content("Login")
      expect(page).to have_content("Logout")
    end
  end
end
