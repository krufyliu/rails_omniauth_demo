class CallbacksController < ApplicationController
  def all
    @info = request.env['omniauth.auth']
    render text: @info.to_json
  end

  alias :github :all
  alias :coding :all
end
