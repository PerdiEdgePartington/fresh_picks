Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :produce do
    resources :recipes, only: :index
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
