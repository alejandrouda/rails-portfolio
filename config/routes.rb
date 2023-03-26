Rails.application.routes.draw do
  devise_scope :user do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end
  devise_for :users, :skip => [:registrations] 
  as :user do
  get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
  put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end
  # devise_for :users
  root to: "pages#home"

  resources :articles, only: [:index, :show]
  resources :article_categories, only: [:index, :show]
  resources :services, only: [:index, :show]
  resources :packages, only: [:index, :show]
  resources :contact_forms, only: [:new, :create]
  get 'contacto', to: 'contact_forms#new'
  post '/contacto', to: 'contact_forms#create', as: 'create_contact_forms'
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
