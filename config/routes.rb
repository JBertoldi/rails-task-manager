Rails.application.routes.draw do
  # add route to list all tasks
  get '/tasks', to: 'tasks#index'
end
