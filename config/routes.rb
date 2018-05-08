Rails.application.routes.draw do
  devise_for :users
  root "designs#index"
  resources :designs do
    resources :likes, only: [:create, :destroy]
  end
end
