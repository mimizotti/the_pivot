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

  describe ".instance_methods" do
    let(:user) { User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive") }
    let(:admin) { User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", platform_admin: true) }
    let(:role) { Role.create(name: "Business Admin") }
    let(:store) { create(:store) }

    describe ".full_name" do
      it "can generate a full name for a user" do
        expect(user.full_name).to eq("Bon Jovi")
      end
    end

    describe ".business_admin?" do
      it "returns true if user.roles contains Business Admin" do
        UserRole.create(user: user, role: role, store: store)
        expect(user.business_admin?).to eq(true)
      end
      it "returns false if user.roles does not contain Business Admin" do
        expect(user.business_admin?).to eq(false)
      end
    end

    describe ".platform_admin?" do
      it "returns true if user is a platform_admin" do
        expect(admin.platform_admin?).to eq(true)
      end
      it "returns false if user is not a platform_admin" do
        expect(user.platform_admin?).to eq(false)
      end
    end
  end
end
