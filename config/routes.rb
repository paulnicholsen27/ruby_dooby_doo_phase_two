Rails.application.routes.draw do
  get 'appearances/show'

  get 'appearances/index'

  get 'appearances/edit'

  get 'appearances/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index]
  resources :episodes, only: [:index]
end
