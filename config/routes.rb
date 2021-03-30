# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  # root route can be defined using root helper or (get "") method
  root to: "main#index"
  # go to /about
  get "about", to: "about#index"

  # route for registration form
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  # routes for password resetting
  get "password", to: "password#edit", as: "edit_password"
  patch "password", to: "password#update"

  # routes for maintaining the user session
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  # resetting the password
  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
end
