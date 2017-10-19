
require 'rails_helper'

describe "As a visitor" do
  before(:each) do
    @stores = create_list(:store, 10)

    visit stores_path
  end

  scenario "I can see a list of all stores" do

    expect(current_path).to eq('/stores')
    expect(Store.count).to eq(10)
    expect(page).to have_css('.store', count: 10)
    @stores.each do |store|
      expect(page).to have_content(store.name)
    end
  end

  scenario "I can click on an individual store logo" do
    click_on Store.first.name

    expect(current_path).to eq("/stores/#{Store.first.id}")
  end
end
