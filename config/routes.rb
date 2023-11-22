Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :mangas, only: %i[index new create show edit update]
  resources :bookings, only: %i[new create edit update]
  resources :pages do
    resources :bookings, only: %i[index show]
  end
end
