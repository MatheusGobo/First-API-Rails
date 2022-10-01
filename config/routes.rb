Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # Authentication
      post 'auth/login', to: "authentication#login"

      # Users
      resources :users

      # Category
      resources :categories

      # Article
      get '/articles/published', to: 'articles#published'
      get '/articles/not_published', to: 'articles#not_published'
      resources :articles

      # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

      # Defines the root path route ("/")
      # root "articles#index"
    end
  end
end
