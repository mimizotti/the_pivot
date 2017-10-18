require 'rails_helper'

RSpec.describe "Admin edits the user" do

  let(:user) { create(:user, role: 1) }

  context "with valid information" do
    it "and sees their dashboard with updated information" do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit admin_dashboard_path

      click_link("Edit Account")

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

  # context "with invalid or missing information" do
  #   it "redirects to the update form" do
  #     allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
  #
  #     visit admin_dashboard_path
  #
  #     click_link("Edit Account")
  #
  #     fill_in "user[address]", with: "123 UnderSea Way"
  #     fill_in "user[first_name]", with: "James"
  #     fill_in "user[last_name]", with: "Smith"
  #     click_button "Update"
  #
  #     expect(current_path).to eq edit_user_path(user)
  #   end
  # end

  # it "Cannot modify any other users account" do
  #
  #   user_2 = User.create(first_name: "Sponge", last_name: "Bob", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive")
  #   allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
  #
  #   visit admin_dashboard_path
  #   click_link("Edit Account")
  #   expect(page).to_not have_content(user_2.first_name)
  #   click_button "Update"
  #
  #   expect(page).to have_content("Admin Dashboard")
  #   expect(page).to have_content("Bon Jovi")
  # end
end
