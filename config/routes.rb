Luna::Engine.routes.draw do
  get '/open', to: 'luna/sessions#new', as: 'open_session'
end

