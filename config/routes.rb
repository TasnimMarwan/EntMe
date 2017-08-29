Rails.application.routes.draw do
  get 'home/index'
  root to: "home#index"
  devise_for :users
  get '/products/:type' => 'products#index', constraints: { type: /musics|films|games/ }, as: "products_type"
  
  resources :products
  
end
