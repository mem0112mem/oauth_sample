Rails.application.routes.draw do
  # get 'oauth_test/index'
  root :to => 'oauth_test#index'

  # devise_for :users
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
