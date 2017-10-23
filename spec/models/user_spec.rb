require 'rails_helper'

describe User do
  describe "validations" do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_uniqueness_of(:username) }
    it { should have_many(:orders) }
  end

  describe ".instance_methods" do
    let(:user) { User.create(first_name: "Jim", last_name: "Szalewski", address: "526 Kalamath St.", email: "jim.szalewski@gmail.com", username: "sadlypath", password: "takethesadpath", platform_admin: true) }
    context ".full_name" do
      it "can generate a full name for a user" do
        expect(user.full_name).to eq("Jim Szalewski")
      end
    end

    context ".create_reset_digest" do
      it "generates a random 6 digit number and stores it on the user" do
        expect(user.create_reset_digest.length).to eq 6
        expect(user.create_reset_digest).to be_a String
      end
    end

    context ".reset_password" do
      it "generates a code, sends it to the users phone and stores it on the user" do
        expect(user.reset_password).to_not be nil
        expect(user[:reset_digest]).to_not be nil
        expect(user[:reset_digest]/length).to eq 6
      end
    end
  end
end
