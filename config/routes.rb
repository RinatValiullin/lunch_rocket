Rails.application.routes.draw do

  namespace :users do
  get 'omniauth_callbacks/vkontakte'
  end

  root :to => 'registration#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users

  get "/menus" => 'menu#index'
end
