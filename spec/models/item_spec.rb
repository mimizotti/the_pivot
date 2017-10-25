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
end
