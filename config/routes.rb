Rails.application.routes.draw do



  resources :stores
  get 'articles/index'
  get 'articles/show'
  get 'articles/new'
  get 'articles/create'
  get 'articles/edit'
  get 'articles/update'
  get 'private_auditions/show'
  get 'private_auditions/new'
  get 'private_auditions/create'
  get 'private_briefs/show'
  get 'private_briefs/new'
  get 'private_briefs/create'
  get 'user_auditions/create'
  get 'user_auditions/destroy'
  get 'user_auditions/accept'
  get 'user_auditions/decline'
  get 'dashboards/show'
  get 'users/show'
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
  get 'pages/components'

  get 'pages/mission'
  get 'pages/how_it'
  get 'pages/cancel'
  get 'pages/staff'
  get 'pages/search_actors'
  post 'pages/search_actors'
  get 'pages/carousel'
  get 'pages/complaint'
  get 'pages/terms_and_conditions'

  get 'pages/searching'
  post 'pages/searching'
  get 'pages/searching_companies'
  post 'pages/searching_companies'

  patch "/accept", to: "private_briefs#accept"
  patch "/decline", to: "private_briefs#decline"


  patch "/accept", to: "private_briefs#accept"
  patch "/decline", to: "private_briefs#decline"


  patch '/join_brief', to: "briefs#join_brief_auditions"
  patch "/acceptb", to: "user_briefs#accept_brief"
  patch "/declineb", to: "user_briefs#decline_brief"
  patch "/acceptinvite", to: "private_invites#accept"
  patch "/declineinvite", to: "private_invites#decline"
  patch "/deleteb", to: "user_briefs#delete_invite"
  delete "/delete_post", to: "posts#delete_post"
  patch "/deletepb", to: "private_invites#delete"
  patch "/report_brief", to: "briefs#report_brief"


  devise_for :users
  root to: 'pages#home'

  resources :actors, only: [:show, :new, :create, :update, :delete]
  resources :production_companies, only: [:show, :new, :create, :update, :delete]
  resources :users, path: '/', param: :id, only: %i[show]
  resources :dashboards, only: [:show]
  resources :posts




  resources :profiles, only: [:show, :new, :create, :update, :delete]
  resources :briefs, only: [:show, :new, :create, :update, :delete]
  resources :briefs, path: '/', param: :id, only: %i[show]
  resources :private_briefs, only: [:show, :new, :create, :update, :delete]
  resources :private_briefs, path: '/', param: :id, only: %i[show]
  resources :articles, only: [:index, :show, :new, :create, :update, :delete]
  resources :articles, path: '/', param: :id, only: %i[show]
  resources :reasons, only: [:show, :new, :create, :update, :delete]
  resources :account_complaints, only: [:show, :new, :create, :update, :delete]
  resources :pbreasons, only: [:show, :new, :create, :update, :delete]


  resources :auditions, only: [:index, :show, :new, :create, :update, :delete]
  resources :auditions, path: '/', param: :id, only: %i[show]
  resources :private_auditions, only: [:show, :new, :create, :update, :delete]
  resources :private_auditions, path: '/', param: :id, only: %i[show]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
