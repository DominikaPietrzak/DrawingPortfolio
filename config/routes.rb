Rails.application.routes.draw do
  get 'comic_chapter_sides/index'

  get 'comic_chapter_sides/show'

  devise_for :users
  resources :arts
  resources :comic_books
  resources :comic_chapters
  resources :comic_pages
  # resources :comic_page_sides
  root to: 'main_side#index'
  get 'dayritual', to: 'main_side#index'
  get 'dayritual/comics', to: 'comic_sides#index'
  get 'dayritual/pages', to: 'comic_page_sides#index'
  get 'dayritual/arts', to: 'art_sides#index'
  match '/comics/:id/:title' => 'comic_sides#show', :as => :comic_sides_with_title, via: [:get, :post]
  match '/chapters/:id/:title' => 'comic_chapter_sides#show', :as => :comic_chapter_sides_with_title, via: [:get, :post]
  match '/pages/:comic_chapter_id/:number' => 'comic_page_sides#show', :as => :comic_page_side, via: [:get, :post]
end
