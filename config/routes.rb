Rails.application.routes.draw do
  get 'create_users/name:string'
  get 'create_users/email:string'
  get 'create_users/password_digest:string'
  get 'create_users/profile_picture:string'
  get 'create_users/bio:text'
  get 'create_users/location:string'
  get 'create_users/twitter_url:string'
  get 'create_users/facebook_url:string'
  get 'create_users/linkedin_url:string'
  get 'create_users/github_url:string'
  get 'create_users/website_url:string'
  get 'create_users/role:integer'
  get 'create_users/latitude:float'
  get 'create_users/longitude:float'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
