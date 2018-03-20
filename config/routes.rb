Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#view index tasks page
 get 'tasklist', to:'tasklist#index'
post '/tasklist', to: 'tasklist#create'
get 'tasklist/new', to: 'tasklist#new'



get 'tasklist/:id', to: 'tasklist#show'
get '/tasklist/:id/edit', to:'tasklist#edit'
patch '/tasklist/:id', to:'tasklist#update'
delete '/tasklist/:id', to:'tasklist#destroy'

end
