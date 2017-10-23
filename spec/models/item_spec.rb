require 'rails_helper'

describe Item do

  let(:store) { Store.create(name: "Knautical Knots", description: "Underwater basket weaving supplies, not just for lazy millenials!", image: "knotical-knots.png") }

  describe "validations" do
    context "invalid attributes" do
      it "is invalid without a unique title" do
        Item.create(title: "Mask", store: store, description: "Something to put on your face.", price: 49.95, status: 1)
        item = Item.new(title: "Mask", store: store, description: "Something to put on your face.", price: 49.95, status: 1)
        expect(item).to be_invalid
      end

      it "is invalid without a description" do
        item = Item.new(title: "Mask", price: 49.95, status: 1)
        expect(item).to be_invalid
      end

      it "is invalid without a price" do
        item = Item.new(title: "Mask", store: store, description: "Something to put on your face.", status: 1)
        expect(item).to be_invalid
      end
    end

    context "valid attributes" do
      it "is valid with a title, description, and price" do
        item = Item.new(title: "Mask", store: store, description: "Something to put on your face.", price: 49.95, status: 1)
        expect(item).to be_valid
      end
    end
  end

  describe "relationships" do
    it "has many order_items" do
      item = Item.new(title: "Mask", store: store, description: "Something to put on your face.", price: 49.95, status: 1)
      expect(item).to respond_to(:order_items)
    end

    it "has many orders" do
      item = Item.new(title: "Mask", store: store, description: "Something to put on your face.", price: 49.95, status: 1)
      expect(item).to respond_to(:orders)
    end

    it "has many item_categories" do
      item = Item.new(title: "Mask", store: store, description: "Something to put on your face.", price: 49.95, status: 1)
      expect(item).to respond_to(:item_categories)
    end

    it "has many categories" do
      item = Item.new(title: "Mask", store: store, description: "Something to put on your face.", price: 49.95, status: 1)
      expect(item).to respond_to(:categories)
    end
  end

  describe "class methods" do
    it "can sort by popularity" do
      item1, item2, item3 = create_list(:item, 3)
      order = create(:order)
      order_item1 = create(:order_item, item: item1, order: order, line_item_total: 16.00)
      order_item2 = create(:order_item, item: item2, order: order, line_item_total: 4.00)
      order_item3 = create(:order_item, item: item2, order: order, line_item_total: 6.00)

      top = Item.by_popularity.first
      bottom = Item.by_popularity.last

      expect(top).to eq(item2)
      expect(bottom).to eq(item3)
    end
  end
end
