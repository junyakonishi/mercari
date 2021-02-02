Rails.application.routes.draw do
  root "items#index"
  resources :items


  get 'mypage',to: 'users#show'
  

  get '/show', to: 'items#show'

end
