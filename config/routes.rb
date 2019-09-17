Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  resources :reviews do
    resources :comments
    resource :bookmark
  end

  resources :users
  resource :session
  resource :account

  get "about", to: "pages#about"
  get "terms", to: "pages#about"

  root "reviews#index"
end
