require "rails_helper"

RSpec.describe ItemCategory do
  describe "relationships" do
    it "belongs to an item" do
      category = Category.create(name: "Scuba")
      item = Item.create(title: "Mask", description: "Something to put on your face.", price: 49.95, status: 1)
      item_category = ItemCategory.new(item_id: item.id, category_id: category.id)
      expect(item_category).to respond_to(:item)
    end

    it "belongs to a category" do
      category = Category.create(name: "Scuba")
      item = Item.create(title: "Mask", description: "Something to put on your face.", price: 49.95, status: 1)
      item_category = ItemCategory.new(item_id: item.id, category_id: category.id)
      expect(item_category).to respond_to(:category)
    end
  end
end
