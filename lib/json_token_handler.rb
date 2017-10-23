class JsonTokenHandler

  def initialize(attrs = {})
    @user_id = attrs[:user_id]
    @password = attrs[:password]
  end

  def get_token
    payload = { user_id: @user_id, password: @password }
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end

  def self.authenticate_token(token)
    begin
      result = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
      check_user(result["user_id"], result["password"])
    rescue JWT::DecodeError
      return false
    end
  end

  private

  def self.check_user(id, password)
    user = User.find_by(id: id)
    if user && user.authenticate(password)
      return true
    else
      return false
    end
  end

end
