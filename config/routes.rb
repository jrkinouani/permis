Rails.application.routes.draw do

  get 'stages/index'
  get 'stages/show'

  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => 'pages#home'
  get '/apropos'  => 'pages#apropos'
  get "/mentions" => 'pages#mentions'
  get "/infos_stage" => 'pages#infos_stage'
  get "/test" => 'pages#test'
  get "/annulation" => 'pages#annulation'
  get "/invalidation" => 'pages#invalidation'
  get "/suspension" => 'pages#suspension'
  get "/contact" => 'pages#contact'

  get "/contenu" => 'pages#contenu'

  resources :messages, only: [:new, :create]
  resources :stages
  resources :charges

  resources :reservations, only: [:index, :show, :new, :create]
  get 'reservations/_form'
  get 'reservations/edit'
  get 'reservations/show'
  get 'reservations/index'
  match "/404" => "errors#error404", via: [ :get, :post, :patch, :delete ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
