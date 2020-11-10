Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Verb 'PATH', to: "CONTROLLER_name#METHOD_name"

  # (3) As a user, I can list tasks
  # get 'restaurants', to: "restaurants#index"
  # # -> /restaurants -> call the method index on the controlle Restaurans
  get 'tasks', to: 'tasks#index' # list tasks

  # (5) As a user, I can add a new task
  # post 'restaurants', to: "restaurants#create"
  post 'tasks', to: 'tasks#create' # add a new task
  # get 'restaurants/new', to: "restaurants#new"
  get 'tasks/new', to: 'tasks#new' # add a new task

  # (6) As a user, I can edit a task
  # get 'restaurants/:id/edit', to: "restaurants#edit", as: :edit_restaurant
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task # allows to put a prefix in rails routes
  # patch 'restaurants/:id', to: "restaurants#update"
  patch 'tasks/:id', to: 'tasks#update' # update a task (mark as completed / update title & details)

  # (4) As a user, I can view the details of a task
  # get 'restaurants/:id', to: "restaurants#show", as: :restaurant
  # # /restaurants/43 -> call the show method on RestaurantsContr...
  # # and give the params {id: 43}
  get 'tasks/:id', to: 'tasks#show', as: :task # view the details of a task

  # (7) As a user, I can remove a task
  # delete 'restaurants/:id', to: "restaurants#destroy"
  delete 'tasks/:id', to: 'tasks#delete' # remove a task
end
