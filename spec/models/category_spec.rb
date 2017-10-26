require 'rails_helper'

describe Category do
  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_uniqueness_of(:title) }
  end

  describe "relationships" do
    it { should have_many(:item_categories) }
    it { should have_many(:items).through(:item_categories) }
  end
end
