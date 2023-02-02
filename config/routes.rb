Rails.application.routes.draw do
  get 'category/new'
  devise_for :users
  root to: "pages#home"

  resources :categories do
    resources :proyects, only: [:new, :create, :index]
  end
  resources :proyects, only: [:destroy, :show, :edit, :update]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
