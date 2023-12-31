Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :users, only: %i[show]
  resources :mangas do
    resources :bookings, only: %i[new create]
  end
  resources :pages do
    resources :bookings, only: %i[index show]
  end
  get '/annonce', to: 'pages#annonce', as: :annonce
  get '/conditions', to: 'pages#conditions', as: :condition
  get '/confidentialites', to: 'pages#confidentialites', as: :confident
  get '/legal', to: 'pages#legal', as: :legal
  get '/faq', to: 'pages#faq', as: :faq
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  get '/reservation', to: 'pages#reservation', as: :reservation
end
