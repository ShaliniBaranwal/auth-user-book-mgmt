Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "application#landing"

  resources :account
  resources :login
  resources :logout

  resources :book
  resources :bookname
  resources :byauthor
end
