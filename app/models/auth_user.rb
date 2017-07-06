class AuthUser
  attr_accessor :token

  def initialize(email, password)
    @email = email
    @password = password
    @errors = []
  end

  class << self
    def encode(payload, exp = 24.hours.from_now)
      payload[:exp] = exp.to_i
      JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    def decode(token)
      body = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
      HashWithIndifferentAccess.new body
    rescue
      nil
    end
  end


  def sign_in
    token = AuthUser.encode(user_id: user.id) if user
    token
  end


  private

  attr_accessor :email, :password

  def user
    user = User.where(email: email).last
    return user if user && user.authenticate(password)
    @errors.push 'invalid credentials'
    nil
  end
end
