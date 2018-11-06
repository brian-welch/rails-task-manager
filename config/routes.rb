#something
Rails.application.routes.draw do

  # READ ALL
  get 'tasks', to: 'tasks#index'

  # NEW
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # READ ONE
  get 'tasks/:id', to: 'tasks#show', as: :task

  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task

end
