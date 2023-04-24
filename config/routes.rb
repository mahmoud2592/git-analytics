Rails.application.routes.draw do
  resources :commits
  resources :repositories_tags
  resources :feedbacks
  resources :analytics
  resources :admin_users
  resources :activity_logs
  resources :comments
  resources :ratings
  resources :views
  resources :users_repositories
  resources :searches
  resources :repositories
  resources :users
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
