Rails.application.routes.draw do
  get 'photos/new'

  get 'profile/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "pages#index"
  
  resources :posts
  resources :profile
  resources :photos
  get "profile/more_profile/:id", to: "profile#more_profile", as: "more_profile"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
