require 'rails_helper'

RSpec.describe Store, type: :model do
  it { should have_many(:items) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:image) }
  it { should validate_uniqueness_of(:name) }
end
