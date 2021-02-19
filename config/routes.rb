Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  resources :items
  


  get 'mypage',to: 'users#show'
  get 'buyconfirm',to: 'items#buyconfirm'
  get 'card_new',to: 'items#card_new'
  

end
