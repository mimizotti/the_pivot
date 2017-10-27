require 'rails_helper'

RSpec.describe "Admin edits the user" do

  let(:user) { create(:user, platform_admin: true) }

  context "with valid information" do
    it "and sees their dashboard with updated information" do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit admin_dashboard_path

      click_link("Manage Account")

      fill_in "user[email]", with: "findingnemo@sea.com"
      fill_in "user[address]", with: "123 UnderSea Way"
      fill_in "user[first_name]", with: "James"
      fill_in "user[last_name]", with: "Smith"
      click_button "Update"

      expect(current_path).to eq admin_dashboard_path

      expect(page).to have_content("Admin Dashboard")
      expect(page).to have_content("James Smith")
    end
  end
end
