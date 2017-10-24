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
    platform_admin == true || self.roles == "Business Admin" || self.roles == "Business Manager"
  end

  def create_reset_digest
    code = rand(100000...999999).to_s
    self.update_attribute(:reset_digest, code)
    code
  end

  def reset_password
    require "pry"; binding.pry
    create_reset_digest
    @client = Twilio::REST::Client.new ENV['twilio_sid'], ENV['twilio_token']
    @client.messages.create(from: ENV['twilio_phone'], to: self.phone, body: "Your confirmation code is #{create_reset_digest}")
  end

  enum role: ["user", "admin"]
end
