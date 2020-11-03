Rails.application.routes.draw do
  # add route to list all tasks
  root to: 'tasks#index'
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task
  get '/tasks', to: 'tasks#index'

  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'
  get '/tasks/:id', to: 'tasks#show', as: :task

end
