Rails.application.routes.draw do
  get 'players/index'
  resources :players, only: :show
  resources :clans, only: :show
  resources :battles, only: :show
  resources :locations, only: :show
  resources :decks, only: :show

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'player#index'
end
