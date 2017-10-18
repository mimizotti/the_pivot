# require 'rails_helper'
#
# RSpec.describe 'A user updates their account' do
#
#   let(:user) { create(:user) }
#
#   context 'as an admin' do
#     context 'with with valid information' do
#       it 'and sees their dashboard with new information' do
#         allow_any_instance_of(ApplicationController)
#           .to receive(:current_user)
#           .and_return(admin)
#
#         visit admin_dashboard_path
#         click_on 'Edit Account'
#
#         fill_in 'user[first_name]', with: 'Jim'
#         fill_in 'user[last_name]', with: 'Botron'
#         fill_in 'user[address]', with: 'my house'
#         fill_in 'user[email]', with: 'jimbotron@tap.com'
#
#         click_on 'Update'
#
#         expect(current_path).to eq admin_dashboard_path
#         expect(page).to_not have_content admin.first_name
#         expect(page).to_not have_content admin.last_name
#         expect(page).to_not have_content admin.address
#         expect(page).to_not have_content admin.email
#         expect(page).to have_content 'Jim'
#         expect(page).to have_content 'Botron'
#         expect(page).to have_content 'my house'
#         expect(page).to have_content 'jimbotron@tap.com'
#       end
#     end
#
#     context 'with invalid or missing information' do
#       it 'and is redirected back to the update form' do
#
#       end
#     end
#   end
#
#   context 'as a registered user' do
#     context 'with with valid information' do
#       it 'and sees their dashboard with new information' do
#
#       end
#     end
#
#     context 'with invalid or missing information' do
#       it 'and is redirected back to the update form' do
#
#       end
#     end
#   end
# end
