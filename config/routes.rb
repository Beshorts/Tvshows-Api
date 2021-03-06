Rails.application.routes.draw do
  devise_for :users

  resources :tvshows, only: [:index, :show]
  root to: 'pages#home'
  get '/genre', to: 'pages#genre', as: 'genre'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
