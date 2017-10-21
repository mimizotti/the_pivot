class User < ApplicationRecord
  has_secure_password

  validates_presence_of :first_name, :last_name, :username, :password, :address, :email
  validates_uniqueness_of :username

  has_many :orders

  def full_name
    "#{first_name} #{last_name}"
  end

  def create_reset_digest
    rand(100000...999999).to_s
  end

  enum role: ["user", "admin"]
end
