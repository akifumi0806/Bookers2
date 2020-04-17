Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get 'books/destroy'
  get 'books/new'
  get 'books/create'
  get 'books/update'
  get 'top/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#index'

  resources :mypages, only: [:update, :index]

end
