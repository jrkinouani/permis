Rails.application.routes.draw do

  get 'stages/index'

  get 'stages/show'

  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => 'pages#home'
  get '/apropos'  => 'pages#apropos'
  get "/mentions" => 'pages#mentions'
  resources :stages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
