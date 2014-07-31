Rails.application.routes.draw do

  get  '/api/text/:bar', to: 'api#index',  defaults: { format: 'text' }
  get  '/api/json/:bar', to: 'api#index',  defaults: { format: 'json' }
  post '/api/json/:bar', to: 'api#create', defaults: { format: 'json' }
end
