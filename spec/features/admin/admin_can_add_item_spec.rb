# require 'rails_helper'
#
# describe 'Admin creates an item from link on admin dashboard' do
#   let(:store) { Store.create(name: "Knautical Knots", description: "Underwater basket weaving supplies, not just for lazy millenials!", image: "knotical-knots.png") }
#   let(:admin) { create(:user, role: 1) }
#   scenario 'with valid attributes and sees the item' do
#     category = Category.create(name: "Scuba")
#
#     allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)
#
#     visit admin_dashboard_path(admin)
#
#     expect(page).to have_link 'Create New Item'
#     click_link 'Create New Item'
#
#     expect(current_path).to eq new_admin_item_path
#
#     fill_in 'item[title]', with: 'Scuba Steve Costume'
#     fill_in 'item[description]', with: 'For your at home underwater basket weaving needs'
#     fill_in 'item[price]', with: 199.99
#     fill_in 'item[image]', with: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR509iY3ruk1lW5PmyGSd_on1SXTnNLtbDLVW4Xly1DCiksAmp48Q"
#
#     check "Scuba"
#
#     click_button 'Create Item'
#
#     item = Item.last
#
#     expect(current_path).to eq item_path(item.id)
#     expect(page).to have_content(item.title)
#     expect(page).to have_content(item.description)
#     expect(page).to have_content(item.price)
#     expect(page).to have_content(item.categories.last.name)
#     expect(page).to have_css "img[src='#{item.image}']"
#   end
#
#   scenario 'with invalid attributes and sees a flash message' do
#     category = Category.create(name: "Scuba")
#
#     allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)
#
#     visit new_admin_item_path
#
#     fill_in 'item[description]', with: 'For your at home underwater basket weaving needs'
#     fill_in 'item[price]', with: 199.99
#     fill_in 'item[image]', with: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR509iY3ruk1lW5PmyGSd_on1SXTnNLtbDLVW4Xly1DCiksAmp48Q"
#     check "Scuba"
#
#     click_button 'Create Item'
#
#     expect(current_path).to eq "/admin/items"
#     expect(page).to have_content "Invalid information entered, try again"
#   end
# end
