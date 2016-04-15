require 'omniauth/strategies/coding'

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_ID'], ENV['GITHUB_SECRET'], {
    provider_ignores_state: true
  }
  provider :coding, ENV['CODING_ID'], ENV['CODING_SECRET'], {
    provider_ignores_state: true
  }
end
