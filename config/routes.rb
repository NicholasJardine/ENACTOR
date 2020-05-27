Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :profiles, only: [:show, :new, :create, :delete]
  resources :briefs, only: [:show, :new, :create, :delete]
  resources :auditions, only: [:index, :show, :new, :create, :delete]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
