Rails.application.routes.draw do
  devise_for :authors, :controllers => { registrations: 'registrations' }
  resources :posts, only: [:new, :create, :index]

 root "posts#index"
end
