Rails.application.routes.draw do
  #get 'appearance/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:new, :create]
 # get 'appearances/', to: 'appearance#new'
end
