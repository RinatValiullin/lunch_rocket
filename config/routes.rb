Rails.application.routes.draw do

  root :to => 'registration#index'
  devise_for :users
  
  resources :users
end
