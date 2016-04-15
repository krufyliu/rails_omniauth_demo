Rails.application.routes.draw do
  root 'home#index'
  get '/auth/:action/callback', controller: 'callbacks'
end
