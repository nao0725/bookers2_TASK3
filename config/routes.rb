Rails.application.routes.draw do
  root to: "homes#top"
  get "home/about" => "homes#about"
  devise_for :users
  resources :books, only: [:create, :index, :show, :destroy, :edit, :update]
  get "books/:id/favorites" => "books#fovotites"
  resources :users, only: [:index,:show,:edit,:update]
  resource :favorites, only: [:create, :destroy]
end
