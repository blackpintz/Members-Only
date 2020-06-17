Rails.application.routes.draw do
  devise_for :authors
  resources :posts, only: [:new, :create, :index]

 root "posts#index"
end
