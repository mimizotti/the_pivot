require 'rails_helper'

describe User do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without a first_name" do
        user = User.new(last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive")
        expect(user).to be_invalid
      end

      it "is invalid without a last_name" do
        user = User.new(first_name: "Bon", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", role: "admin")
        expect(user).to be_invalid
      end

      it "is invalid without an address" do
        user = User.new(first_name: "Bon", last_name: "Jovi", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", role: "admin")
        expect(user).to be_invalid
      end

      it "is invalid without an email" do
        user = User.new(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", username: "bonjovirules", password: "deadoralive", role: "admin")
        expect(user).to be_invalid
      end

      it "is invalid without a unique username" do
        User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", role: "admin")
        user = User.new(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", role: "admin")
        expect(user).to be_invalid
      end

      it "is invalid without a password" do
        user = User.new(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", role: "admin")
        expect(user).to be_invalid
      end
    end

    context "valid attributes" do
      it "is valid with a first_name, last_name, address, email, username, and password" do
        user = User.new(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", role: "admin")
        expect(user).to be_valid
      end
    end
  end

  describe "relationships" do
    it "has many orders" do
      user = User.new(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", role: "admin")
      expect(user).to respond_to(:orders)
    end
  end

  describe "methods" do
    it "can generate a full name for a user" do
      user = User.create(first_name: "Bon", last_name: "Jovi", address: "123 crazy street", email: "deadoralive@awesome.com", username: "bonjovirules", password: "deadoralive", role: "admin")
      expect(user.full_name).to eq("Bon Jovi")
    end
  end
end
