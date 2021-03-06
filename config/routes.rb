Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "/home/about" => "homes#index"
 
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :homes
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
