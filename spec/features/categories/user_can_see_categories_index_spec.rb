require 'rails_helper'

RSpec.describe "user visits categories index path" do
  before(:each) do
    category1, category2 = create_list(:category, 2)
    item1, item2, item3 = create_list(:item, 3)
    category1.items << item1
    category1.items << item2
    category2.items << item3
    visit("/categories")
  end

  it "and will see categories sorted by popularity" do
    expect(page).to have_content(category1.name)
    expect(page).to have_content(category2.name)
    expect()

  end

  it "and will see images of first item in each category" do

  end
end
