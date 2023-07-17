Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'movie_lists#index'

  resources :movie_lists
  resources :movie_bookmarks
end
