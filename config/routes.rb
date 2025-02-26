Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  resources :restaurants, only: [:index, :show, :new, :create, :destroy] do
    resources :reviews, only: [:create]
  end
  root "restaurants#index"
end
