require 'rails_helper'

RSpec.describe "An API call can be made" do
  scenario "and return the most popular categories for a store" do
    it "with undetermined quantity" do
      user = create(:user, password: "GETMEIN")
      store = create(:store)
      category1, category2, category3 = create_list(:category, 3)
      item1 = create(:item, categories: category1)
      item2 = create(:item, categories: category2)
      item3 = create(:item, categories: category3)
      order = create(:order)
      create_list(:order_item, 3, line_item_total: 5.00, item: item1, order: order)
      create_list(:order_item, 1, line_item_total: 7.50, item: item2, order: order)

      jth = JsonTokenHandler.new(username: user.username, password: "GETMEIN")
      token = jth.get_token

      conn = Faraday.new("https://localhost:3000/api/v1")
      response = conn.get("/store_popular_categories") do |f|
        f.default_adapter Faraday.default_adapter
        f.headers         token
        f.body            { store: store.name }
      end
      result = JSON.parse(response.body)

      expect(result.count).to eq(3)
      expect(result[0]["name"]).to eq(item1.name)
      expect(result[1]["name"]).to eq(item2.name)
      expect(result[2]["name"]).to eq(item3.name)
    end

    it "with specified count" do
      user = create(:user, password: "GETMEIN")
      store = create(:store)
      category1, category2, category3 = create_list(:category, 3)
      item1 = create(:item, categories: category1)
      item2 = create(:item, categories: category2)
      item3 = create(:item, categories: category3)
      order = create(:order)
      create_list(:order_item, 3, line_item_total: 5.00, item: item1, order: order)
      create_list(:order_item, 1, line_item_total: 7.50, item: item2, order: order)

      jth = JsonTokenHandler.new(username: user.username, password: "GETMEIN")
      token = jth.get_token

      conn = Faraday.new("https://localhost:3000/api/v1")
      response = conn.get("/store_popular_categories") do |f|
        f.default_adapter Faraday.default_adapter
        f.headers         token
        f.body            { store: store.name,
                            limit: 1 }
      end
      result = JSON.parse(response.body)

      expect(result.count).to eq(1)
      expect(result[0]["name"]).to eq(item1.name)
    end
  end
end
