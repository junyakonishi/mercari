Rails.application.routes.draw do
  root "items#index"
  resources :items
  get '/show', to: 'items#show'
end
