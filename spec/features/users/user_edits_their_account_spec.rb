require 'rails_helper'

RSpec.describe 'A user updates their account' do

  let(:user) { create(:user) }
  let(:other_user) { create(:user, username: 'ozymandius')}

  context 'As a registered user' do
    context 'I should be able to edit my account' do
      it 'and change my information' do

        old_first_name = user.first_name
        old_last_name = user.last_name
        old_address = user.address
        old_email = user.email
        old_username = user.username

        allow_any_instance_of(ApplicationController)
          .to receive(:current_user)
          .and_return(user)

        visit edit_user_path(user)

        fill_in 'user[first_name]', with: 'Jim'
        fill_in 'user[last_name]', with: 'Botron'
        fill_in 'user[address]', with: 'my house'
        fill_in 'user[email]', with: 'jimbotron@tap.com'
        fill_in 'user[username]', with: 'rorschach'

        click_on 'Update'

        expect(current_path).to eq dashboard_path
        expect(page).to have_content user.first_name
        expect(page).to have_content user.last_name
        expect(page).to have_content user.address
        expect(page).to have_content user.email
        expect(page).to have_content user.username
        expect(page).to_not have_content old_first_name
        expect(page).to_not have_content old_last_name
        expect(page).to_not have_content old_address
        expect(page).to_not have_content old_email
        expect(page).to_not have_content old_username
      end
    end
  end
end
