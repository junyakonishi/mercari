Rails.application.routes.draw do
  root "items#index"
  resources :items

  get 'mypage',to: 'users#show'
  
end
