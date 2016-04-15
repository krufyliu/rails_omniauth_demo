require 'omniauth/strategies/coding'

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_ID'], ENV['github_secret']
  provider :coding, ENV['CODING_ID'], ENV['CODING_SECRET']
end
