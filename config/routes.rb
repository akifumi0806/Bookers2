Rails.application.routes.draw do
resources :books
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#home'
  get '/home/about', to: 'top#about'

  resources :users, only: [:index, :edit, :update, :show]
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'

end
