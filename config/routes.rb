Rails.application.routes.draw do
  get 'static/index'

  devise_for :users
  resources :dishes do
    resources :reviews
  end
  root 'static#index'
end
