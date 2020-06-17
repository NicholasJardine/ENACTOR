Rails.application.routes.draw do


  get 'production_companies/show'
  get 'production_companies/create'
  get 'production_companies/new'
  get 'production_companies/update'
  get 'production_companies/edit'
  get 'production_companies/delete'
  get 'actors/show'
  get 'actors/create'
  get 'actors/new'
  get 'actors/edit'
  get 'actors/delete'

  get 'pages/home'
  get 'pages/mission'
  get 'pages/how_it'
  get 'pages/staff'
  get 'pages/searching'
  post 'pages/searching'



  devise_for :users
  root to: 'pages#home'

  resources :actors, only: [:show, :new, :create, :update, :delete]
  resources :production_companies, only: [:show, :new, :create, :update, :delete]


  resources :profiles, only: [:show, :new, :create, :uppdate, :delete]
  resources :briefs, only: [:show, :new, :create, :update, :delete]
  resources :auditions, only: [:index, :show, :new, :create, :update, :delete]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
