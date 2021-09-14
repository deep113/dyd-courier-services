Rails.application.routes.draw do
  get 'tracks', to: "track#search"
  post 'tracks', to: "track#search"
  get 'orders', to: "order#index"
  post "orders",  to: "order#create"
  #resources 'orders'
  get "/", to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
