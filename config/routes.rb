Rails.application.routes.draw do
  root to: 'homes#top'
  get 'products/:id', to: 'products#show'
  get 'ajax',         to: 'products#ajax'
  get 'todolists/new'
  post 'todolists' => 'todolists#create'
  get 'todolists' => 'todolists#index'
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
  delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
