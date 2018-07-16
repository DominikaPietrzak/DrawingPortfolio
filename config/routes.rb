Rails.application.routes.draw do
  devise_for :users
  resources :arts
  resources :comic_books
  resources :comic_chapters
end
