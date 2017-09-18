require 'rails_helper'

RSpec.describe "An authenticated user is logged in" do
  it "and they cannot see another user's orders" do
    user_1 = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive")
    user_2 = User.create(first_name: "Jack", last_name: "White", address: "456 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive")

    visit "/"
    expect(page).to have_content("Login")

    click_on "Login"
    expect(current_path).to eq("/login")

    fill_in 'Username', with: 'bonjovirules'
    fill_in 'Password', with: 'deadoralive'

    click_on "Login"
    
    visit '/dashboard'

    expect(page).to have_content("Bon Jovi")
    expect(page).to have_content("123 crazy street")
    expect(page).to_not have_content("Jack")
    expect(page).to_not have_content("White")
    expect(page).to_not have_content("456 crazy street")
  end
end

