require 'rails_helper'

feature "Two-Factor Password Reset" do
  scenario "Guest user receives a code to reset password" do
    create_list(:item, 10)

    User.create(first_name: 'Mimi', last_name: 'Le', address: "18th & Market St", email: 'mimi@mimi.com', username: 'mimi', password: 'mimi', phone_number: ENV['test_phone'])

    visit login_path

    click_on "Forgot my Password"

    expect(current_path).to eq('/password-reset')
    fill_in 'Email', with: 'mimi@mimi.com'
    click_on 'Submit'

    expect(current_path).to eq('/password-confirmation')

    confirmation_code = User.last.confirmation_code

    fill_in 'Confirmation code', with: "#{confirmation_code}"
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Submit'

    expect(current_path).to eq('/dashboard')

    click_on 'Logout'

    within('.login') do
      click_on 'Login'
    end


    fill_in 'Username', with: 'mimi'
    fill_in 'Password', with: 'mimi'
    click_button 'Login'

    expect(current_path).to eq(login_path)

    fill_in 'Username', with: 'mimi'
    fill_in 'Password', with: 'password'
    click_button 'Login'

    expect(current_path).to eq('/dashboard')
  end
end
