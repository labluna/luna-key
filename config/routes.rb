Luna::Engine.routes.draw do
  get '/open', to: 'sessions#new', as: 'open_session'
  post '/open', to: 'sessions#create'
  delete '/open', to: 'sessions#destroy', as: 'close_session'
end

