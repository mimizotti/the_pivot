require 'rails_helper'

RSpec.describe "An unregistered user creates an account" do
  context "with valid information" do
    it "and sees their dashboard" do
      visit '/'
      click_on 'Login'

      expect(current_path).to eq '/login'
      expect(page).to have_content("Create Account")

      click_on 'Create Account'

      fill_in "user[email]", with: "mb@email.com"
      fill_in "user[first_name]", with: "Mike"
      fill_in "user[last_name]", with: "Butera"
      fill_in "user[address]", with: "123 Some Street"
      fill_in "user[username]", with: "booboo"
      fill_in "user[password]", with: "1234"

      click_on "Create User"

      expect(current_path).to eq '/dashboard'
      expect(page).to have_content("Logged in as booboo")
      expect(page).to have_content("Mike Butera")
      expect(page).to have_content("123 Some Street")
      expect(page).to have_content("booboo")
      expect(page).to_not have_content("Login")
    end
  end

  context 'with invalid or incomplete information' do
    it 'redirects to new user creation form' do
      visit new_user_path

      fill_in "user[last_name]", with: "Butera"
      fill_in "user[address]", with: "123 Some Street"
      fill_in "user[username]", with: "booboo"
      fill_in "user[password]", with: "1234"

      click_on "Create User"

      expect(current_path).to eq login_path
    end
  end
end
