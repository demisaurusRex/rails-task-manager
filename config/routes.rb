Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Read (all)
  get 'tasks', to: 'tasks#index'
  # Create
  get 'tasks/new', to: 'tasks#new', as: :tasks_new
  post 'tasks', to: 'tasks#create'
  # show (find task by id)
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update'
  # Destroy
  delete 'tasks/:id', to: 'tasks#destroy'
end
