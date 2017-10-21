require 'rails_helper'

feature 'User forgets their password' do
  context 'and clicks the Forgot Password link on the login page' do
    it 'and is taken through the process of resetting their password' do
      user = User.create(first_name: 'Jim', last_name: 'Szalewski', username: 'sadlypath', address: '526 Kalamath St.', phone: '7203616510', email: 'jim.szalewski@gmail.com', password: 'sadsadsad')
      confirmation_code = '123456'

        visit '/login'
        click_on 'Forgot my Password'

        expect(current_path).to eq '/password-reset'

        fill_in 'user[email]', with: 'jim.szalewski@gmail.com'
        click_on 'Submit'

        expect(current_path).to eq '/password-verification'

        expect(page).to have_content 'A confirmation code has been sent to 7203616510'
        expect(page).to have_css '.container-fluid'
        expect(page).to have_content 'Enter your confirmation code'
        # And I should have received a text message with a confirmation code
        expect(message.to).to eq '+17203616510'
        expect(message.from).to eq '+12406961677'
        expect(message.body).to eq 'Your confirmation code is 123456'
        # When I enter the confirmation code
        fill_in 'confirmation', with: confirmation_code
        # And I fill in Password with password
        fill_in 'password', with: 'password'
        # And I fill in Password Confirmation with password
        fill_in 'password_confirmation', with: 'password'
        # And I click "Submit"
        click_on 'Submit'
        # Then I should be redirected to "/dashboard"
        expect(current_path).to eq '/dashboard'
        # And I should be logged in
        expect(current_user).to_not be nil
        click_on 'Logout'
        click_on 'Login'
        # And my old password should no longer work for logging in
        fill_in 'username', with: user[:username]
        fill_in 'password', with: user[:password]
        click_on 'Login'
        expect(current_path).to be '/login'
        expect(page).to have_content 'You have entered an incorrect username or password.'
        # And my new password should work after logging out and logging back in
        ill_in 'username', with: user[:username]
        fill_in 'password', with: 'password'
        click_on 'Login'
        expect(current_path).to eq '/dashboard'
        expect(page).to have_content 'Logged in as sadlypath'
    end
  end
end
