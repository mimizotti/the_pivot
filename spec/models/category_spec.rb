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

  describe "class methods" do

  end

  describe "instance methods" do
    it "can find the image of the most popular item" do
      category = create(:category)
      order = create(:order)
      item1 = create(:item)
      item2 = create(:item, image: "http://cdn.innovativelanguage.com/wordlists/media/thumb/8221_fit512.jpg")
      item3 = create(:item, image: "https://www.dollartree.com/assets/product_images_2016/styles/xlarge/125436.jpg")
      category.items << item1
      category.items << item2
      category.items << item3
      order_item1 = create(:order_item, item: item1, order: order, line_item_total: 16.00)
      order_item2 = create(:order_item, item: item2, order: order, line_item_total: 4.00)
      order_item3 = create(:order_item, item: item2, order: order, line_item_total: 8.00)

      image = category.best_image

      expect(image).to eq(item1.image)
    end
  end
end
