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

  def reset_password
    create_reset_digest
    @client = Twilio::REST::Client.new ENV['twilio_sid'], ENV['twilio_token']
    @client.messages.create(from: ENV['twilio_phone'], to: self.phone, body: "Your confirmation code is #{create_reset_digest}")
  end

  enum role: ["user", "admin"]
end
