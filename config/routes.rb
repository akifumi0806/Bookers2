Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#home'
  get '/home/about', to: 'top#about'
  resources :books do
	resource :favorites, only: [:create, :destroy]
  end
  resources :users, only: [:index, :edit, :update, :show]

  resources :books, only: [:new, :create, :index, :show] do
  	resource :book_comments, only: [:create]
  end

   get 'users/:id/followers', to: 'relationships#followers', as: "followers"
   get 'users/:id/follows', to: 'relationships#follows', as: "follows"

  post 'follow/:id' => 'relationships#create', as: "follow"
  post 'unfollow/:id' => 'relationships#destroy', as: 'unfollow'

    get "search" => "searches#search"
end
