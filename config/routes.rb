Rails.application.routes.draw do
  root "items#index"
  resources :items
  get '/show', to: 'items#show'

  get 'mypage',to: 'users#show'
  get 'buyconfirm',to: 'items#buyconfirm'
  get 'card_new',to: 'items#card_new'
  

end
