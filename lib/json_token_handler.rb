class JsonTokenHandler

  def initialize(attrs = {})
    @username = attrs[:username]
    @password = attrs[:password]
  end

  def get_token
    # user = User.find_by(username: @username)
    payload = { username: @username, password: @password }
    # ^ add scope: user.role < or whatever will output the role
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end

  def self.authenticate_token(token)
    # ^ can add arguement "scope" to determine if user is verified for particular function
    result = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
    check_user(result["username"], result["password"])
  end

  private

  def self.check_user(username, password)
    user = User.find_by(username: username)
    if user && user.authenticate(password)
      return true
    else
      return false
    end
  end

end
