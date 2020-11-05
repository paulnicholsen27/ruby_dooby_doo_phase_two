Rails.application.routes.draw do
  # get 'appearances/edit'

  # get 'appearances/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:edit, :index, :new, :create]
end
