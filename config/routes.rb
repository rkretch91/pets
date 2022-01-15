Rails.application.routes.draw do

  # READ(ALL)
  get 'pets', to: 'pets#index'

  # CREATE
  get 'pets/new', to: 'pets#new'
  post 'pets', to: 'pets#create'

  # UPDATE
  get 'pets/:id/edit', to: 'pets#edit', as: :pets_edit
  patch 'pets/:id', to: 'pets#update'

  # DESTROY
  delete 'pets/:id', to: 'pets#destroy'

  # READ(ONE)
  get 'pets/:id', to: 'pets#show', as: :pet
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
