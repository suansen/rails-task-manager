Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'tasks#index'
  # tasks GET    /tasks(.:format)     tasks#index
  #      POST   /tasks(.:format)     tasks#create
  # task DELETE /tasks/:id(.:format) tasks#destroy
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  get '/tasks', to: 'tasks#index'
  get '/tasks/new', to: 'tasks#new', as: :new_task
  get '/tasks/:id', to: 'tasks#show', as: :task
  post '/tasks', to: 'tasks#create'
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'

  # resources :tasks
end
