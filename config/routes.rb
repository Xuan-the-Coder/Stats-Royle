Rails.application.routes.draw do
  resources :pages
  root to: 'clans#index'
  get 'players/index'
  resources "players", only: %i[index show]
  resources "clans", only: %i[index show]
  resources "battles", only: %i[index show]

  get 'search', to: 'players#search', as: 'search'

  get ":permalink", to: "pages#permalink", as: "permalink"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
