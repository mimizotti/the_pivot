require 'rails_helper'

describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:username) }
    it { should have_many(:orders) }
  end

  describe "methods" do
    it "can generate a full name for a user" do
      user = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive")
      expect(user.full_name).to eq("Bon Jovi")
    end
  end
end
