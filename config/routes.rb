Rails.application.routes.draw do
resources :books
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#index'

  resources :users, only: [:index, :edit, :update]
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'

end
