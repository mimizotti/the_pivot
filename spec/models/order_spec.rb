require 'rails_helper'

describe Order do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without a user_id" do
        order = Order.create(total_price: 154.85, status: 1)
        expect(order).to be_invalid
      end

      it "is invalid without a total_price" do
        user = create(:user)
        order = Order.create(user_id: user.id, status: 1)
        expect(order).to be_invalid
      end

      it "is invalid without a status" do
        order = Order.create(user_id: 1, total_price: 154.85)
        expect(order).to be_invalid
      end
    end
  end

  describe "relationships" do
    it "belongs to items" do
      user = create(:user)
      order = Order.create!(user_id: user.id, total_price: 154.85, status: 1)
      expect(order).to respond_to(:items)
    end
  end

  describe "methods" do
    it "self.ordered_count" do
      user = create(:user)
      Order.create!(user_id: user.id, total_price: 154.85, status: 0)
      Order.create!(user_id: user.id, total_price: 154.85, status: 1)
      expect(Order.ordered_count).to eq(1)
    end

    it "self.paid_count" do
      user = create(:user)
      Order.create!(user_id: user.id, total_price: 154.85, status: 0)
      Order.create!(user_id: user.id, total_price: 154.85, status: 1)
      expect(Order.ordered_count).to eq(1)
    end

    it "self.cancelled_count" do
      user = create(:user)
      Order.create!(user_id: user.id, total_price: 154.85, status: 0)
      Order.create!(user_id: user.id, total_price: 154.85, status: 2)
      expect(Order.ordered_count).to eq(1)
    end

    it "self.completed_count" do
      user = create(:user)
      Order.create!(user_id: user.id, total_price: 154.85, status: 0)
      Order.create!(user_id: user.id, total_price: 154.85, status: 3)
      expect(Order.ordered_count).to eq(1)
    end

    it "self.ordered" do
      user = create(:user)
      order_1 = Order.create!(user_id: user.id, total_price: 154.85, status: 0)
      order_2 = Order.create!(user_id: user.id, total_price: 154.85, status: 1)
      expect(Order.ordered).to eq([order_1])
    end

    it "self.paid" do
      user = create(:user)
      order_1 = Order.create!(user_id: user.id, total_price: 154.85, status: 0)
      order_2 = Order.create!(user_id: user.id, total_price: 154.85, status: 1)
      expect(Order.paid).to eq([order_2])
    end

    it "self.cancelled" do
      user = create(:user)
      order_1 = Order.create!(user_id: user.id, total_price: 154.85, status: 0)
      order_2 = Order.create!(user_id: user.id, total_price: 154.85, status: 2)
      expect(Order.cancelled).to eq([order_2])
    end

    it "self.completed" do
      user = create(:user)
      order_1 = Order.create!(user_id: user.id, total_price: 154.85, status: 0)
      order_2 = Order.create!(user_id: user.id, total_price: 154.85, status: 3)
      expect(Order.completed).to eq([order_2])
    end
  end
end