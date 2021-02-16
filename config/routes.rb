Rails.application.routes.draw do
  # get 'appearance/new', to: 'appearance#new'

  # post 'appearance/create', to: 'appearance#create'
  resources :appearances, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
end
