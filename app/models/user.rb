class User < ApplicationRecord
  has_secure_password

  has_many :orders

  def full_name
    "#{first_name} #{last_name}"
  end

  enum role: ["user", "admin"]
end
