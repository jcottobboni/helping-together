Rails.application.routes.draw do
  resources :memberships
  resources :groups
  devise_for :users
  root 'home#index'
end
