Rails.application.routes.draw do
  root 'articles#index'
  resources :articles
  get 'signup', to: "users#new"
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  delete 'signout', to: "sessions#destroy"
  resources :users, except: [:new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
