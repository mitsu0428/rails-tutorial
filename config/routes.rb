Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get '', to: 'todos#index'
  get 'todos', to: 'todos#index'
  post 'todos', to: 'todos#addTodo'
  delete 'todos/:id', to: 'todos#deleteTodo'
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
 end