require "rails_helper"

RSpec.describe ItemCategory do
  describe "relationships" do
    it { should belong_to(:item) }
    it { should belong_to(:category) }
  end
end
