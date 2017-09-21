require 'rails_helper'

describe Category do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without a name" do
        category = Category.new
        expect(category).to be_invalid
      end

      it "is invalid without a unique name" do
        category = Category.create(name: "Scuba")
        category_1 = Category.new(name: "Scuba")
        expect(category_1).to be_invalid
      end
    end

    context "valid attributes" do
      it "is valid with a name" do
        category = Category.new(name: "Scuba")
        expect(category).to be_valid
      end
    end
  end

  describe "relationships" do
    it "has many item_categories" do
      category = Category.new(name: "Scuba")
      expect(category).to respond_to(:item_categories)
    end

    it "has many items" do
      category = Category.new(name: "Scuba")
      expect(category).to respond_to(:items)
    end
  end
end
