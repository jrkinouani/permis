Rails.application.routes.draw do

  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => 'pages#home'
  get '/apropos'  => 'pages#apropos'
  get "/mentions" => 'pages#mentions'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
