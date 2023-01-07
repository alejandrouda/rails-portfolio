Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :articles, only: [:index, :show]
  resources :article_categories, only: [:index, :show]
  resources :services, only: [:index, :show]
  resources :packages, only: [:index, :show]
  # resources :dashboard, only: [:index] do
  #   resources :articles
  #   resources :services
  #   resources :packages
  # end
  get 'admin', action: :show, controller: 'users'

  # namespace :admin do
  #   # root to: "users#show"
  #   resources :articles, :services, :packages
  # end

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
