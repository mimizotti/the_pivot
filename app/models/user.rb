class User < ApplicationRecord
  has_secure_password

  validates_presence_of :first_name, :last_name, :username, :address, :email
  validates_uniqueness_of :username
  validates :password, confirmation: true, presence: true

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

  def business_admin?
    self.roles.where(name: "Business Admin").any?
  end

  def self.find_or_create_from_auth(auth)
    find_or_create_by(provider: auth["provider"], uid: auth["uid"]) do |user|
      user.uid = auth["uid"]
      user.provider = auth["provider"]
      user.first_name = auth["info"]["name"].split(" ")[0]
      user.last_name  = auth["info"]["name"].split(" ")[1]
      user.username = auth["info"]["nickname"]
      user.email = "fakeemail@emailand.com"
      user.address = "default"
      user.password = "n/a"
      user.oauth_token = auth["credentials"]["token"]
      user.save!
    end
  end

  def self.from_token_payload payload
    payload['sub']
  end

end
