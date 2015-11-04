Rails.application.routes.draw do
  devise_for :users
  resources :dishes do
    resources :reviews
  end
  root 'dishes#index'
end
