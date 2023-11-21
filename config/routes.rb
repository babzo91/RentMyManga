Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :mangas, only: %i[index new create show update]
end
