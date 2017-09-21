require "rails_helper"

RSpec.describe Cart, type: :model do
  subject { Cart.new({"1" => 1, "2" => 3}) }
  describe "instance methods" do
    describe "#add_item" do
      it 'can add an item to the cart' do
        subject.add_item(1)
        subject.add_item(2)
        subject.add_item(3)

        expect(subject.contents).to eq({"1" => 2, "2" => 4, "3" => 1})
      end
    end

    describe "#count_of" do
      it 'can display its quantity' do
        expect(subject.count_of(1)).to eq(1)
        expect(subject.count_of(2)).to eq(3)
      end
    end

    describe "#total_count" do
      it 'can count the total cart' do
        expect(subject.total_count).to eq(4)
      end
    end

    describe "#quantity" do
      it 'can display quantity by item id' do
        expect(subject.quantity(1)).to eq(1)
      end
    end

    describe "#increase_item" do
      it 'can increase the quanity of the item by id' do
        subject.increase_item(1)

        expect(subject.contents).to eq({"1"=>2, "2"=>3})
      end
    end

    describe "#decrease_item" do
      it 'can descrease the quanity of the item by id' do
        subject.decrease_item(1)

        expect(subject.contents).to eq({"2"=>3})
      end
    end

    describe "#remove_item" do
      it 'can remove an item by id' do
        subject.remove_item(2)

        expect(subject.contents).to eq("1" => 1)
      end
    end

    describe "#delete_item" do
      it 'can delete an item from the cart' do
        subject.delete_item(2)

        expect(subject.contents).to eq({"1"=>1, "2"=>3})
      end
    end

    describe "#destroy" do
      it 'can destroy its entire cart' do
        subject.destroy

        expect(subject.contents).to eq({})
      end
    end
  end
end
