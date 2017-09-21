class User < ApplicationRecord
  has_secure_password

  validates :first_name, :last_name, :username, :password, :address, :email, presence: true
  validates :username, uniqueness: true

  has_many :orders

  def full_name
    "#{first_name} #{last_name}"
  end

  enum role: ["user", "admin"]
end
