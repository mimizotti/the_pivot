require 'rails_helper'

describe Item do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:price) }
    it { should validate_uniqueness_of(:title) }
  end

  describe 'relationships' do
    it { should belong_to(:store) }
    it { should have_many(:orders) }
    it { should have_many(:item_categories) }
    it { should have_many(:categories).through(:item_categories) }
  end

  describe "class methods" do
    it "can sort by popularity" do
      item1, item2, item3 = create_list(:item, 3)
      user = create(:user)
      order = create(:order, user: user)
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
