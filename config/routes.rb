Rails.application.routes.draw do
  resources :dishes
  root 'dishes#index'
end
