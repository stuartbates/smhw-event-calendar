Rails.application.routes.draw do

  resources :events, only: [:index, :create]
  root to: 'events#index'

end
