Rails.application.routes.draw do
  get 'search', to: "search#index"
  get 'orders/success'
  get 'orders/bought'
  get 'orders/sold'
  resources :listings
  devise_for :users
  root "pages#home"
  get 'browse', to: 'listings#index'
  get 'about', to: 'pages#about'

  post "listings/:id/order", to: "listings#place_order", as: "place_order"
end