Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :mangas, only: %i[index new create show edit update] do
    resources :bookings, only: %i[new create]
  end
  resources :pages do
    resources :bookings, only: %i[index show]
  end
  get '/annonce', to: 'pages#annonce', as: :annonce
end
