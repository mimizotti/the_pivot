require 'rails_helper'

feature "Two-Factor Password Reset" do
  scenario "Guest user receives a code to reset password" do
  create_list(:item, 10)

  User.create(first_name: 'Mimi', last_name: 'Le', address: "18th & Market St", email: 'mimi@mimi.com', username: 'mimi', password: 'mimi')

  visit login_path

  click_on "Forgot my Password"

  expect(current_path).to eq('/password-reset')
  fill_in 'Email', with: 'mimi@mimi.com'
  click_on 'Submit'

  expect(current_path).to eq('/password-confirmation')
  save_and_open_page

  fill_in 'Confirmation Code', with: '1111'
  fill_in 'New Password', with: 'password'
  fill_in 'Password Confirmation', with: 'password'
  click_on 'Submit'

  expect(current_path).to eq('/dashboard')

  within('.logout') do
    click_on 'Logout'
  end

  within('.login') do
    click_on 'Login'
  end

  fill_in 'Username', with: 'mimi'
  fill_in 'Password', with: 'mimi'
  click_button 'Submit'

  expect(current_path).to eq(login_path)

  fill_in 'Username', with: 'mimi'
  fill_in 'Password', with: 'password'
  click_button 'Submit'

  expect(current_path).to eq('/dashboard')
  end
end
