class User < ApplicationRecord
  has_secure_password

  validates_presence_of :first_name, :last_name, :username, :password, :address, :email
  validates_uniqueness_of :username

  has_many :orders
  has_many :user_roles
  has_many :roles, through: :user_roles
  has_many :stores, through: :user_roles

  def full_name
    "#{first_name} #{last_name}"
  end

  def is_admin?
    platform_admin == true || self.roles.where(name: "Business Manager").any? || self.roles.where(name: "Business Admin").any?
  end

end
