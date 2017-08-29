Rails.application.routes.draw do
  get 'home/index'
  root to: "home#index"
  devise_for :users
  get '/products/:type' => 'products#index', constraints: { type: /musics|films|games/ }, as: "products_type"
  get 'home/index' => 'line_items#add_to_cart', as: "cart"
  resources :products
  
end
