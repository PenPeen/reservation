module RequestSpecHelper
  def login(identity)
    post login_path, params: { email: identity.email, password: identity.password }
  end
end

RSpec.configure do |config|
  config.include RequestSpecHelper, type: :request
end
