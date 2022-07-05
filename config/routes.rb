Rails.application.routes.draw do
  resources :listings
  devise_for :users
  root "pages#home"
  get 'browse', to: 'listings#index'
  get 'about', to: 'pages#about'

  post "listings/:id/order", to: "listings#place_order", as: "place_order"

  get 'pages/success', to: 'pages#success', as: "order_success"
end