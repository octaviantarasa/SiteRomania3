require 'omniauth-facebook'
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '638731286170706', '10b8db5792d18b3abe952bd033e39e83'
end