class HomeController < ApplicationController
  before_action :set_provider_state
    
  def index
  end

  private
  def set_provider_state
    session['omniauth.state'] = SecureRandom.hex(24)
  end
end
