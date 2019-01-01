Rails.application.routes.draw do

  get 'stages/index'

  get 'stages/show'

  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => 'pages#home'
  get '/apropos'  => 'pages#apropos'
  get "/mentions" => 'pages#mentions'
  get "/infos_stage" => 'pages#infos_stage'
  resources :stages


  resources :reservations, only: [:index, :show, :new, :create]
  get 'reservations/_form'
  get 'reservations/edit'
  get 'reservations/show'
  get 'reservations/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
