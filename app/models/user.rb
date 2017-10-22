class User < ApplicationRecord
  has_secure_password

  validates_presence_of :first_name, :last_name, :username, :password, :address #, :email
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

  def self.find_or_create_from_auth(auth)
    # binding.pry
    find_or_create_by(provider: auth["provider"], uid: auth["uid"]) do |user|
      user.uid = auth["uid"]
      user.provider = auth["provider"]
      user.first_name = auth["info"]["name"].split(" ")[0]
      user.last_name  = auth["info"]["name"].split(" ")[1]
      user.username = auth["info"]["nickname"]
        # if auth["info"]["username"]
        #   user.username  = auth["info"]["username"]
        # else
        #   user.username = "#{user.first_name}default"
        # end

        # if auth["info"]["email"]
        #   user.email = auth["info"]["email"]
        # else
        #   user.email = "fake@twitter.com"
        # end
      # user.email = auth["info"]["email"]
      user.address = "default"
      user.password = "n/a"
      user.oauth_token = auth["credentials"]["token"]
      user.save!
    end
  end

end
