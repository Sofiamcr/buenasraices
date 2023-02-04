Rails.application.routes.draw do
  get 'category/new'
  devise_for :users
  root to: "categories#index"

  resources :categories do
    resources :proyects, only: [:new, :create]
  end
  resources :proyects, only: [:destroy, :edit, :update]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
