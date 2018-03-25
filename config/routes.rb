Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#view index tasks page
get '/tasks', to:'tasks#index', as: 'tasks'
#view all complete tasks

get 'tasks/new', to: 'tasks#new', as: 'new_task'
post '/tasks', to: 'tasks#create'

get '/tasks/tasks_complete', to:'tasks#tasks_complete', as: 'tasks_complete'

get 'tasks/:id', to: 'tasks#show', as: 'task'
get '/tasks/:id/edit', to:'tasks#edit', as:'edit_task'
patch '/tasks/:id', to:'tasks#update'
patch "/tasks/:id/complete", to: "tasks#complete", as: "complete_task"
patch "/tasks/:id/uncomplete", to: "tasks#uncomplete", as: "uncomplete_task"
delete '/tasks/:id', to:'tasks#destroy'
end
