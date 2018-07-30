Rails.application.routes.draw do
  devise_for :users
  resources :arts
  resources :comic_books
  resources :comic_chapters
  resources :comic_pages
  root to: 'main_side#index'
  get 'dayritual', to: 'main_side#index'
  get 'dayritual/comics', to: 'comic_sides#index'
  get 'dayritual/pages', to: 'comic_page_sides#index'
  get 'dayritual/arts', to: 'art_sides#index'
  match '/comics/:id/:title' => 'comic_sides#show', :as => :comic_sides_with_title, via: [:get, :post]

end
