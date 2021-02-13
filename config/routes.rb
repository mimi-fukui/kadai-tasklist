Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
#  get 'users/index'
#  get 'users/show'
#  get 'users/new'
#  get 'users/create'
    root to: 'tasks#index'
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    get 'signup', to: 'users#new'
    resources :users, only: [:index, :show, :new, :create]
    resources :tasks, only: [:create, :destroy]  


    # get 'tasks/:id', to: 'tasks#show'
    # post 'tasks', to: 'tasks#create'
    # put 'tasks/:id', to: 'tasks#update'
    # delete 'tasks/:id', to: 'tasks#destroy'
    
    # get 'tasks' to: 'tasks#show'
    
    # get 'tasks/new', to 'tasks#new'
    
    # get 'tasks/:id/edit', to: 'tasks#edit'
end
