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

<<<<<<< HEAD
  def is_admin?
    platform_admin == true || self.roles == "Business Admin" || self.roles == "Business Manager"
  end

=======
  def create_reset_digest
    rand(100000...999999).to_s
  end

  enum role: ["user", "admin"]
>>>>>>> reset digest added to users
end
