class JsonTokenHandler

  def initialize(attrs = {})
    @username = attrs[:username]
    @password = attrs[:password]
  end

  def get_token
    payload = { username: @username, password: @password }
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end

end
