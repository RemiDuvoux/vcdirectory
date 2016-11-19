Rails.application.routes.draw do
  root 'vc_firms#home'
  resources :vc_firms, only: [:index, :show] do
    resources :startups, only: :index
  end
  resources :startups, only: [:show] do
    resources :founders, only: :index
  end
  resources :founders, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
