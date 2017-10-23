require 'rails_helper'

RSpec.describe "user visits categories index path" do

  it "and will see categories sorted by popularity" do
    category1, category2 = create_list(:category, 2)
    store1, store2 = create_list(:store, 2)
    item1, item3 = create_list(:item, 2, store: store1)
    item2 = create(:item, store: store2)
    order1, order2 = create_list(:order, 2)
    order_item1 = create(:order_item, order: order1, item: item1, line_item_total: 5.00)
    order_item2 = create(:order_item, order: order2, item: item2, line_item_total: 5.00)
    order_item3 = create(:order_item, order: order2, item: item3, line_item_total: 5.00)
    category1.items << item1
    category2.items << item2
    category2.items << item3

    visit("/categories")

    expect(page).to have_content(category1.name)
    expect(page).to have_content(category2.name)
    expect(page.first('.thumb_name').text).to eq(category1.name)
  end

  it "and will see images of most popular item in each category" do
    category1, category2 = create_list(:category, 2)
    store1, store2 = create_list(:store, 2)
    item1, item3 = create_list(:item, 2, store: store1)
    item2 = create(:item, store: store2)
    order1, order2 = create_list(:order, 2)
    order_item1 = create(:order_item, order: order1, item: item1, line_item_total: 5.00)
    order_item2 = create(:order_item, order: order2, item: item1, line_item_total: 5.00)
    order_item3 = create(:order_item, order: order2, item: item2, line_item_total: 5.00)
    category1.items << item1
    category1.items << item2
    category2.items << item3

    visit("/categories")
    save_and_open_page

    expect(page).to have_css("img[src*='#{item2.image}']")
    expect(page).to have_css("img[src*='#{item3.image}']")
  end

  it "and will be able to navigate to show page by clicking on the names" do
    category1, category2 = create_list(:category, 2)
    store1, store2 = create_list(:store, 2)
    item1, item3 = create_list(:item, 2, store: store1)
    item2 = create(:item, store: store2)

    category1.items << item1
    category1.items << item2
    category2.items << item3
    visit("/categories")
    click_link(category1.name)

    expect(current_path).to eq("/#{category1.name.downcase}")
    expect(page).to have_content(category1.name)
  end

end
