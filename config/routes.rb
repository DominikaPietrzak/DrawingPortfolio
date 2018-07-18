Rails.application.routes.draw do
  devise_for :users
  resources :arts
  resources :comic_books
  resources :comic_chapters
  resources :comic_pages
  root to: 'comic_books#index'
  get 'dayritual', to: 'main_side#index'
end
